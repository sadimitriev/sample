import 'dart:async';
import 'dart:developer';

import 'package:dio/dio.dart' show DioException, DioExceptionType;
import 'package:fresh_dio/fresh_dio.dart';
import 'package:sample/app/constants/error_key.dart';
import 'package:sample/app/network/network_request_wrapper/network_request_result_model.dart';
import 'package:sample/app/network/network_request_wrapper/error_message.dart';
import 'package:sample/app/ui/ui_helpers.dart';

import '../../../others/auth_repository/auth_repository.dart';

export 'package:sample/app/network/network_request_wrapper/network_request_result_model.dart';

class NetworkRequestWrapper {
  static Future<NetworkRequestResultModel<T>> execute<T>(
    Future<T> Function() operation,
  ) async {
    var result = NetworkRequestResultModel<T>.empty();
    try {
      var responseData = await operation();
      result = NetworkRequestResultModel.success(responseData);
    } on DioException catch (dioEx) {
      result = NetworkRequestResultModel.failure(_getDioExErrorMessage(dioEx));
    } on AuthException catch (authEx) {
      result = NetworkRequestResultModel.failure(
        _getAuthExErrorMessage(authEx),
      );
    } catch (e, s) {
      result = NetworkRequestResultModel.failure(
        _getGenericExErrorMessage(e, s),
      );
    }
    return result;
  }

  static String? _getDioExErrorMessage(DioException ex) {
    String? message;
    switch (ex.type) {
      case DioExceptionType.connectionTimeout:
        message = NetworkErrorMessage.connectionTimeout;
      case DioExceptionType.sendTimeout:
        message = NetworkErrorMessage.sendTimeout;
      case DioExceptionType.receiveTimeout:
        message = NetworkErrorMessage.receiveTimeout;
      case DioExceptionType.badCertificate:
        message = NetworkErrorMessage.badCertificate;
      case DioExceptionType.badResponse:
        message = NetworkErrorMessage.badResponse(ex.message);
      case DioExceptionType.cancel:
        if (ex.error == ErrorKey.networkUnavailable) {
          message = NetworkErrorMessage.noInternetConnectionError;
        } else {
          message = NetworkErrorMessage.requestCancelled;
        }
      case DioExceptionType.connectionError:
        message = NetworkErrorMessage.connectionError;
      case DioExceptionType.unknown:
        if(ex.error is RevokeTokenException){
          message = UIHelpers.s.accessTokenRewokedErrorMessage;
        } else{
          message = GeneralErrorMessage.unknownError(ex.message);
        }  
    }
    return message;
  }

  static String? _getAuthExErrorMessage(AuthException ex) {
    String? message;
    switch (ex.exceptionType) {
      case AuthExceptionType.tokenKeyRequestFailed:
        message = AuthErrorMessage.tokenKeyRequestFailed(ex.apiResponse);
      case AuthExceptionType.tokenKeyEmpty:
        message = AuthErrorMessage.tokenKeyEmpty;
      case AuthExceptionType.invalidUserId:
        message = AuthErrorMessage.invalidUserId;
      case AuthExceptionType.noLabsAvailable:
        message = AuthErrorMessage.noLabsAvailable;
    }
    return message;
  }

  static String? _getGenericExErrorMessage(Object e, StackTrace s) {
    log(e.toString());
    log(s.toString());
    return e.toString();
  }
}
