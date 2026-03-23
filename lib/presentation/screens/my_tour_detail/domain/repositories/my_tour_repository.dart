import 'dart:async';

import 'package:dartz/dartz.dart';
import 'package:sample/app/network/errors/failure.dart';

import '../entities/my_tour.dart';

abstract class MyTourRepository {
  Future<Either<Failure, MyTour>> getMyTourById(String sessionId, int reservationId);
}
