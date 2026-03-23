class NetworkRequestResultModel<T> {
  final T? responseData;
  final bool isSuccessful;
  final String? errorMessage;
  final String? warningMessage;

  NetworkRequestResultModel({
    required this.responseData,
    required this.isSuccessful,
    this.errorMessage,
    this.warningMessage,
  });

  factory NetworkRequestResultModel.empty() =>
      NetworkRequestResultModel(responseData: null, isSuccessful: false);

  factory NetworkRequestResultModel.success(T responseData) =>
      NetworkRequestResultModel(responseData: responseData, isSuccessful: true);

  factory NetworkRequestResultModel.failure(
    String? errorMessage, {
    String? warningMessage,
  }) => NetworkRequestResultModel(
    responseData: null,
    isSuccessful: false,
    errorMessage: errorMessage,
    warningMessage: warningMessage,
  );
}
