import 'package:flutter/foundation.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:sample/app/network/network_request_wrapper/network_request_wrapper.dart';
import 'package:sample/app/package_import_lists/repositories_import_list.dart';
import 'package:sample/app/security/secure_storage.dart';

import '../../others/auth_repository/auth_repository.dart';

part 'authentication_event.dart';
part 'authentication_state.dart';
part 'authentication_bloc.freezed.dart';

class AuthenticationBloc
    extends Bloc<AuthenticationEvent, AuthenticationState> {
  final AuthRepository _authRepository;

  AuthenticationBloc({
    required AuthRepository authRepository,
    required int allowedUserInactivityTimeInMinutes,
  }) : _authRepository = authRepository,
       super(_Unknown()) {
    on<_SubscriptionRequested>(_onSubscriptionRequested);
    on<_LogoutRequested>(_onLogoutRequested);
    on<_AccessTokenRewoked>(_onAccessTokenRewoked);
    on<_NewSessionStart>(_newSessionStartRequested);
  }

  final SecureStorage _secureStorage = SecureStorage();

  Future<void> _newSessionStartRequested(
      _NewSessionStart event,
      Emitter emit,
      ) async {
    final sessionId = await _secureStorage.getValue(SecureStorageKeys.sessionId);
    var result = await NetworkRequestWrapper.execute(
          () => _authRepository.newSession(),
    );
    if (!result.isSuccessful ||
        result.responseData == null) {

      return;
    }
    if (result.responseData?.sessionId != null) {
      await _secureStorage.setValue(SecureStorageKeys.sessionId, result.responseData!.sessionId!);
      if (result.responseData?.sessionUser != null) {
        emit(const AuthenticationState.authenticated());
      } else {
        emit(const AuthenticationState.unauthenticated());
      }
    }
  }

  Future<void> _onSubscriptionRequested(
    _SubscriptionRequested event,
    Emitter<AuthenticationState> emit,
  ) {
    return emit.onEach(
      _authRepository.status,
      onData: (status) async {
        switch (status) {
          case AuthStatus.unauthenticated:
            return emit(const AuthenticationState.unauthenticated());
          case AuthStatus.authenticated:
            return emit(const AuthenticationState.authenticated());
          case AuthStatus.unknown:
            return emit(const AuthenticationState.unknown());
        }
      },
      onError: addError,
    );
  }

  Future<void> _onLogoutRequested(
    _LogoutRequested event,
    Emitter<AuthenticationState> emit,
  ) async {
    await _performLogoutRelatedOperations();
  }

  Future<void> _onAccessTokenRewoked(
    _AccessTokenRewoked event,
    Emitter<AuthenticationState> emit,
  ) async {
    await _performLogoutRelatedOperations();
  }

  Future<void> _performLogoutRelatedOperations() async {
    await _authRepository.logOut();
  }
}
