import 'package:dartz/dartz.dart';
import 'package:sample/app/network/errors/failure.dart';
import 'package:sample/app/security/secure_storage.dart';

import '../entities/my_tour.dart';
import '../repositories/my_tour_repository.dart';

class GetMyTourByIdUseCase {
  GetMyTourByIdUseCase(this._repository, this.secureStorage);

  final MyTourRepository _repository;
  final SecureStorage secureStorage;

  Future<Either<Failure, MyTour>> call(
    String sessionId,
    int reservationId,
  ) => _repository.getMyTourById(sessionId, reservationId);
}
