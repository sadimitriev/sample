import 'package:sample/app/ui/ui_helpers.dart';

class GeneralErrorMessage {
  static String _originalErrorText(String? errorInfo) =>
      '${UIHelpers.s.originalErrorText} ${errorInfo ?? UIHelpers.s.initiatorFioNotSpecified}';
  static String unknownError(String? extraErrorMessage) =>
      "${UIHelpers.s.unknownError} ${GeneralErrorMessage._originalErrorText(extraErrorMessage)}";
}

class NetworkErrorMessage {
  static String get connectionTimeout =>
      UIHelpers.s.networkError_connectionTimeout;
  static String get sendTimeout => UIHelpers.s.networkError_sendTimeout;
  static String get receiveTimeout => UIHelpers.s.networkError_recieveTimeout;
  static String get badCertificate => UIHelpers.s.networkError_badCertificate;
  static String badResponse(String? requestErrorMessage) =>
      "${UIHelpers.s.networkError_badResponse} ${GeneralErrorMessage._originalErrorText(requestErrorMessage)}";
  static String get requestCancelled =>
      UIHelpers.s.networkError_requestCancelled;
  static String get connectionError => UIHelpers.s.networkError_connectionError;
  static String get noInternetConnectionError =>
      UIHelpers.s.networkError_noInternetConnection;
}

class AuthErrorMessage {
  static String tokenKeyRequestFailed(String? requestErrorMessage) =>
      '${UIHelpers.s.authError_tokenKeyRequestFailed} ${GeneralErrorMessage._originalErrorText(requestErrorMessage)}';
  static String get tokenKeyEmpty => UIHelpers.s.authError_tokenKeyEmpty;
  static String get invalidUserId => UIHelpers.s.authError_invalidUserId;
  static String get noLabsAvailable => UIHelpers.s.authError_noLabsAvailable;
}
