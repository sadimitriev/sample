import 'dart:io';
import 'package:dio/dio.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import 'error_model.dart';

part 'network_exception.freezed.dart';

@freezed
class NetworkException with _$NetworkException {
  const factory NetworkException.requestCancelled() = RequestCancelled;

  const factory NetworkException.unauthorizedRequest(String reason) = UnauthorizedRequest;

  const factory NetworkException.badRequest() = BadRequest;

  const factory NetworkException.notFound(String reason) = NotFound;

  const factory NetworkException.methodNotAllowed() = MethodNotAllowed;

  const factory NetworkException.notAcceptable() = NotAcceptable;

  const factory NetworkException.requestTimeout() = RequestTimeout;

  const factory NetworkException.sendTimeout() = SendTimeout;

  const factory NetworkException.conflict() = Conflict;

  const factory NetworkException.internalServerError() = InternalServerError;

  const factory NetworkException.notImplemented() = NotImplemented;

  const factory NetworkException.serviceUnavailable() = ServiceUnavailable;

  const factory NetworkException.noInternetConnection() = NoInternetConnection;

  const factory NetworkException.formatException() = FormatException;

  const factory NetworkException.unableToProcess() = UnableToProcess;

  const factory NetworkException.defaultError(String error) = DefaultError;

  const factory NetworkException.forbidden() = Forbidden;

  const factory NetworkException.unexpectedError() = UnexpectedError;

  static NetworkException handleResponse(Response<dynamic>? response) {
    ErrorModel? errorModel;

    try {
      errorModel = ErrorModel.fromJson(response?.data as Map<String, dynamic>);
    } catch (_) {}

    final int statusCode = response?.statusCode ?? 0;
    switch (statusCode) {
      case 400:
      case 401:
      case 403:
      case 404:
      case 422:
        // return NetworkException.notFound(
        //   errorModel?.detail != null && errorModel!.detail!.isNotEmpty && errorModel.detail![0].msg != null
        //       ? errorModel.detail![0].msg!
        //       : 'Oops, something went wrong',
        // );
        return NetworkException.notFound(
          errorModel?.details?[0].message != null
              ? errorModel!.details![0].message!
              : errorModel?.error != null
              ? errorModel!.error!
              : 'Oops, something went wrong',
        );
      case 409:
        return const NetworkException.conflict();
      case 408:
        return const NetworkException.requestTimeout();
      case 500:
        return const NetworkException.internalServerError();
      case 503:
        return const NetworkException.serviceUnavailable();
      default:
        final responseCode = statusCode;
        return NetworkException.defaultError(
          'Received invalid status code: $responseCode',
        );
    }
  }

  static NetworkException getDioException(dynamic error) {
    if (error is Exception) {
      try {
        NetworkException networkException;

        if (error is DioException) {
          if (error.error is SocketException) {
            return const NetworkException.noInternetConnection();
          }

          switch (error.type) {
            case DioExceptionType.cancel:
              networkException = const NetworkException.requestCancelled();
            case DioExceptionType.connectionTimeout:
              networkException = const NetworkException.requestTimeout();
            case DioExceptionType.connectionError:
              networkException = const NetworkException.noInternetConnection();
            case DioExceptionType.receiveTimeout:
            case DioExceptionType.sendTimeout:
              networkException = const NetworkException.sendTimeout();
            case DioExceptionType.badResponse:
              networkException = NetworkException.handleResponse(error.response);
            case DioExceptionType.unknown:
            case DioExceptionType.badCertificate:
              networkException = const NetworkException.unexpectedError();
          }
        } else if (error is SocketException) {
          networkException = const NetworkException.noInternetConnection();
        } else {
          networkException = const NetworkException.unexpectedError();
        }

        return networkException;
      } on FormatException {
        return const NetworkException.formatException();
      } on Exception {
        return const NetworkException.unexpectedError();
      }
    } else {
      if (error.toString().contains('is not a subtype of')) {
        return const NetworkException.unableToProcess();
      } else {
        return const NetworkException.unexpectedError();
      }
    }
  }

  static String getErrorMessage(NetworkException networkException) {
    switch (networkException) {
      case NotImplemented():
        return 'Not Implemented';
      case RequestCancelled():
        return 'Request Cancelled';
      case InternalServerError():
        return 'Internal Server Error';
      case NotFound(:final reason):
        return reason;
      case ServiceUnavailable():
        return 'Service unavailable';
      case MethodNotAllowed():
        return 'Method Allowed';
      case BadRequest():
        return 'Bad request';
      case UnauthorizedRequest(:final reason):
        return reason;
      case UnexpectedError():
        return 'Unexpected error occurred';
      case RequestTimeout():
        return 'Connection request timeout';
      case NoInternetConnection():
        return 'No internet connection';
      case Conflict():
        return 'Error due to a conflict';
      case SendTimeout():
        return 'Send timeout in connection with API server';
      case UnableToProcess():
        return 'Unable to process the data';
      case DefaultError(:final error):
        return error;
      case FormatException():
        return 'Unexpected error occurred';
      case NotAcceptable():
        return 'Not acceptable';
      case Forbidden():
        return 'Forbidden';
    }

    throw UnimplementedError('Unhandled NetworkException: $networkException');
  }
}
