import 'dart:async';
import 'package:dio/dio.dart';
import 'package:fresh_dio/fresh_dio.dart';
import 'package:sample/app/network/dio_client.dart';
import 'package:sample/others/lims_mobile_api_client/src/models/process_reset_password.dart';
import 'package:sample/others/lims_mobile_api_client/src/models/process_sms_code.dart';

import '../../lims_mobile_api_client/lims_mobile_api_client.dart';
import '../auth_repository.dart';

enum AuthStatus { unknown, authenticated, unauthenticated }

class AuthRepository {
  AuthRepository({
    required Dio dio,
    required LimsMobileApiClient limsMobileApiClient,
  }) : _dio = dio,
       _limsMobileApiClient = limsMobileApiClient;

  final Dio _dio;
  final LimsMobileApiClient _limsMobileApiClient;

  final SessionUser _user = SessionUser.empty();

  String? get phone => _user.phone;
  set updatePhone(String value) => _user.phone = value;
  String? get email => _user.email;
  set updateEmail(String value) => _user.email = value;

  final _controller = StreamController<AuthStatus>();

  Stream<AuthStatus> get status async* {
    yield* _controller.stream;
  }

  void dispose() => _controller.close();

  Future<UserAuthCheck?> newSession() async {
    var validatePhoneRequestResult = await _limsMobileApiClient.newSession();
    return validatePhoneRequestResult;
  }

  Future<ProcessCodeModel?> processEmailCode({
    required String code,
    required String? sessionId,
  }) async {
    var result = await _limsMobileApiClient.processEmailCode(
      code: code,
      sessionId: sessionId,
    );

    if (result.message != null && result.message != '') {
      throw AuthException(
        exceptionType: AuthExceptionType.tokenKeyRequestFailed,
        apiResponse: result.message,
      );
    }
    if ((result.isSuccess ?? false) && (result.sessionUser != null)) {
      _user.userName = result.sessionUser?.userName;
      _user.phone = result.sessionUser?.phone;
      _user.email = result.sessionUser?.email;
      _user.isPermanent = result.sessionUser?.isPermanent;
      _user.isAuthenticated = result.sessionUser?.isAuthenticated;
      _user.name = result.sessionUser?.name;
      _user.isEmailConfirmed = result.sessionUser?.isEmailConfirmed;
      _user.isPhoneConfirmed = result.sessionUser?.isPhoneConfirmed;
      _controller.sink.add(AuthStatus.authenticated);
    }

    return result;
  }

  Future<ProcessCodeModel?> processSmsCode({
    required String code,
    required String? sessionId,
  }) async {
    var result = await _limsMobileApiClient.processSmsCode(
      code: code,
      sessionId: sessionId,
    );

    if (result.message != null && result.message != '') {
      throw AuthException(
        exceptionType: AuthExceptionType.tokenKeyRequestFailed,
        apiResponse: result.message,
      );
    }
    if ((result.isSuccess ?? false) && (result.sessionUser != null)) {
      _user.userName = result.sessionUser?.userName;
      _user.phone = result.sessionUser?.phone;
      _user.email = result.sessionUser?.email;
      _user.isPermanent = result.sessionUser?.isPermanent;
      _user.isAuthenticated = result.sessionUser?.isAuthenticated;
      _user.name = result.sessionUser?.name;
      _user.isEmailConfirmed = result.sessionUser?.isEmailConfirmed;
      _user.isPhoneConfirmed = result.sessionUser?.isPhoneConfirmed;
      _controller.sink.add(AuthStatus.authenticated);
    }

    return result;
  }

  Future<ProcessCodeModel?> processPassword({
    required String password,
    required String? sessionId,
  }) async {
    var result = await _limsMobileApiClient.processPassword(
      password: password,
      sessionId: sessionId,
    );

    if (result.message != null && result.message != '') {
      throw AuthException(
        exceptionType: AuthExceptionType.tokenKeyRequestFailed,
        apiResponse: result.message,
      );
    }
    if ((result.isSuccess ?? false) && (result.sessionUser != null)) {
      _user.userName = result.sessionUser?.userName;
      _user.phone = result.sessionUser?.phone;
      _user.email = result.sessionUser?.email;
      _user.isPermanent = result.sessionUser?.isPermanent;
      _user.isAuthenticated = result.sessionUser?.isAuthenticated;
      _user.name = result.sessionUser?.name;
      _user.isEmailConfirmed = result.sessionUser?.isEmailConfirmed;
      _user.isPhoneConfirmed = result.sessionUser?.isPhoneConfirmed;
      _controller.sink.add(AuthStatus.authenticated);
    }

    return result;
  }

  Future<ValidateResultModel?> validateEmail({
    required String email,
    required String? sessionId,
  }) async {
    var result = await _limsMobileApiClient.validateEmail(
      email: email,
      sessionId: sessionId,
    );

    if (result.message != null && result.message != '') {
      throw AuthException(
        exceptionType: AuthExceptionType.tokenKeyRequestFailed,
        apiResponse: result.message,
      );
    }

    return result;
  }

  Future<ProcessResetPasswordModel?> codeRequested({
    required String code,
    required String? sessionId,
  }) async {
    var result = await _limsMobileApiClient.codeRequested(
      code: code,
      sessionId: sessionId,
    );

    if (result.message != null &&
        result.message != '') {
      throw AuthException(
        exceptionType: AuthExceptionType.tokenKeyRequestFailed,
        apiResponse: result.message,
      );
    }

    return result;
  }

  Future<ProcessResetPasswordModel?> resetPassword({
    required String email,
    required String? sessionId,
  }) async {
    var result = await _limsMobileApiClient.resetPassword(
      email: email,
      sessionId: sessionId,
    );

    if (result.message != null &&
        result.message != '') {
      throw AuthException(
        exceptionType: AuthExceptionType.tokenKeyRequestFailed,
        apiResponse: result.message,
      );
    }

    return result;
  }

  Future<ValidateResultModel?> validatePhone({
    required String userName,
    required String? sessionId,
  }) async {
    var validatePhoneRequestResult = await _limsMobileApiClient.validatePhone(
      login: userName,
      sessionId: sessionId,
    );

    if (validatePhoneRequestResult.message != null &&
        validatePhoneRequestResult.message != '') {
      throw AuthException(
        exceptionType: AuthExceptionType.tokenKeyRequestFailed,
        apiResponse: validatePhoneRequestResult.message,
      );
    }

    return validatePhoneRequestResult;
  }

  Future<ProcessCodeModel?> resetPasswordSetNew({
    required String password,
    required String? sessionId,
  }) async {
    var result = await _limsMobileApiClient.resetPasswordSetNew(
      password: password,
      sessionId: sessionId,
    );

    if (result.message != null &&
        result.message != '') {
      throw AuthException(
        exceptionType: AuthExceptionType.tokenKeyRequestFailed,
        apiResponse: result.message,
      );
    }

    if ((result.isSuccess ?? false) && (result.sessionUser != null)) {
      _user.userName = result.sessionUser?.userName;
      _user.phone = result.sessionUser?.phone;
      _user.email = result.sessionUser?.email;
      _user.isPermanent = result.sessionUser?.isPermanent;
      _user.isAuthenticated = result.sessionUser?.isAuthenticated;
      _user.name = result.sessionUser?.name;
      _user.isEmailConfirmed = result.sessionUser?.isEmailConfirmed;
      _user.isPhoneConfirmed = result.sessionUser?.isPhoneConfirmed;
      _controller.sink.add(AuthStatus.authenticated);
    }

    return result;
  }

  Future<void> logOut() async {
    _dio.options.headers.clear();
    _controller.sink.add(AuthStatus.unauthenticated);
  }
}
