import 'package:equatable/equatable.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:formz/formz.dart';
import 'package:sample/app/network/errors/failure.dart';
import 'package:sample/app/network/errors/network_exception.dart';
import 'package:sample/app/security/secure_storage.dart';
import 'package:sample/others/my_travels_repository/src/models/my_travel.dart';
import 'package:sample/presentation/screens/my_tour_detail/domain/entities/my_tour.dart';
import 'package:sample/presentation/screens/my_tour_detail/domain/usecases/get_my_tour_id_use_case.dart';

part 'tour_detail_state.dart';

class TourDetailCubit extends Cubit<TourDetailState> {
  TourDetailCubit(this._getLetterByIdUseCase, {required MyTour tour}) : super(TourDetailState(tour: tour));

  final GetMyTourByIdUseCase _getLetterByIdUseCase;

  Future<void> getTour() async {
    emit(state.copyWith(status: FormzSubmissionStatus.inProgress));
    final sessionId = await _getLetterByIdUseCase.secureStorage.getValue(
      SecureStorageKeys.sessionId,
    );

    final result = await _getLetterByIdUseCase(sessionId!, state.tour!.id!);

    result.fold(
      (failure) {
        final networkException = (failure as NetworkFailure).exception;
        final errorMessage = NetworkException.getErrorMessage(networkException);

        emit(
          state.copyWith(
            errorMessage: errorMessage,
            status: FormzSubmissionStatus.failure,
          ),
        );
      },
      (resultTour) {
        emit(
          state.copyWith(
            status: FormzSubmissionStatus.success,
            tour: resultTour,
          ),
        );
      },
    );
  }
}
