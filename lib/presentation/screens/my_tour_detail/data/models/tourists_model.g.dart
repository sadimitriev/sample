// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'tourists_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

TouristsModel _$TouristsModelFromJson(Map<String, dynamic> json) =>
    TouristsModel(
      visaInfo: json['visaInfo'] as String?,
      firstName: json['firstName'] as String?,
      lastName: json['lastName'] as String?,
      patronymic: json['patronymic'] as String?,
      personalDocumentType: (json['personalDocumentType'] as num?)?.toInt(),
      personalDocumentSeries: json['personalDocumentSeries'] as String?,
      personalDocumentNumber: json['personalDocumentNumber'] as String?,
      birthDay: json['birthDay'] as String?,
    );
