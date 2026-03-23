// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'error_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

ErrorModel _$ErrorModelFromJson(Map<String, dynamic> json) => ErrorModel(
  json['error'] as String?,
  (json['details'] as List<dynamic>?)
      ?.map((e) => ErrorData.fromJson(e as Map<String, dynamic>))
      .toList(),
);

Map<String, dynamic> _$ErrorModelToJson(ErrorModel instance) =>
    <String, dynamic>{'error': instance.error, 'details': instance.details};

ErrorData _$ErrorDataFromJson(Map<String, dynamic> json) =>
    ErrorData(json['message'] as String?);

Map<String, dynamic> _$ErrorDataToJson(ErrorData instance) => <String, dynamic>{
  'message': instance.message,
};
