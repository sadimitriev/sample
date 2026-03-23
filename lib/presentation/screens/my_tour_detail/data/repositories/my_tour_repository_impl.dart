import 'dart:developer';

import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';
import 'package:sample/app/network/errors/failure.dart';
import 'package:sample/app/network/errors/network_exception.dart';
import 'package:sample/presentation/screens/my_tour_detail/data/datasources/my_tour_data_source.dart';
import 'package:sample/presentation/screens/my_tour_detail/data/models/my_tour_model.dart';
import 'package:sample/presentation/screens/my_tour_detail/domain/repositories/my_tour_repository.dart';

class MyTourRepositoryImpl extends MyTourRepository {
  MyTourRepositoryImpl(
    this._newLetterDataSource,
  );

  final MyTourDataSource _newLetterDataSource;

  @override
  Future<Either<Failure, MyTourModel>> getMyTourById(String sessionId, int reservationId) async {
    try {
      final rawLetter = await _newLetterDataSource.getTourById(sessionId, reservationId);
      return Right(rawLetter);
    } on DioException catch (error) {
      log('🐞Error: $error', stackTrace: error.stackTrace);
      final exeption = NetworkException.getDioException(error);
      return Left(NetworkFailure(exeption));
    } catch (error, stackTrace) {
      log('🐞Error: $error', stackTrace: stackTrace);
      return Left(NetworkFailure(const NetworkException.unexpectedError()));
    }
  }
}
