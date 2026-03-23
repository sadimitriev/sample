// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'customer_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

CustomerModel _$CustomerModelFromJson(Map<String, dynamic> json) =>
    CustomerModel(
      email: json['email'] as String?,
      phoneNumber: json['phoneNumber'] as String?,
      registrationAddress: json['registrationAddress'] as String?,
      citizenship: json['citizenship'] as String?,
      firstName: json['firstName'] as String?,
      lastName: json['lastName'] as String?,
      patronymic: json['patronymic'] as String?,
      personalDocumentType: (json['personalDocumentType'] as num?)?.toInt(),
      personalDocumentSeries: json['personalDocumentSeries'] as String?,
      personalDocumentNumber: json['personalDocumentNumber'] as String?,
      birthDay: json['birthDay'] as String?,
    );
