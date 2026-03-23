import 'package:equatable/equatable.dart';
import 'package:flutter/services.dart';

import 'network_exception.dart';

abstract class Failure extends Equatable {
  @override
  List<Object?> get props => [];
}

class NetworkFailure extends Failure {
  NetworkFailure(this.exception, [this.code]);

  final NetworkException exception;
  final int? code;

  @override
  List<Object?> get props => [exception, code];

  @override
  bool? get stringify => true;
}

class CacheFailure extends Failure {}

class DatabaseFailure extends Failure {}

class LocalFailure extends Failure {
  LocalFailure(this.exception);

  final PlatformException exception;

  @override
  List<Object?> get props => [exception];

  @override
  bool? get stringify => true;
}

class GeneralFailure extends Failure {
  GeneralFailure(this.message);

  final String message;

  @override
  List<Object?> get props => [message];

  @override
  bool? get stringify => true;
}
