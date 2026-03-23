import 'package:json_annotation/json_annotation.dart';

part 'error_model.g.dart';

@JsonSerializable(fieldRename: FieldRename.snake)
class ErrorModel {
  ErrorModel(
    this.error,
    // this.type,
    this.details,
  );

  factory ErrorModel.fromJson(Map<String, dynamic> json) => _$ErrorModelFromJson(json);

  String? error;
  // String? type;
  List<ErrorData>? details;

  Map<String, dynamic> toJson() => _$ErrorModelToJson(this);
}

@JsonSerializable(fieldRename: FieldRename.snake)
class ErrorData {
  ErrorData(
    // this.code,
    // this.detail,
    // this.attr,
    this.message,
  );

  factory ErrorData.fromJson(Map<String, dynamic> json) => _$ErrorDataFromJson(json);

  // String? code;
  // String? detail;
  // String? attr;
  String? message;

  Map<String, dynamic> toJson() => _$ErrorDataToJson(this);
}
