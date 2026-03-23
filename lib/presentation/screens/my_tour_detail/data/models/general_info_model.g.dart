// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'general_info_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

GeneralInfoModel _$GeneralInfoModelFromJson(
  Map<String, dynamic> json,
) => GeneralInfoModel(
  hotelName: json['hotelName'] as String?,
  destinationName: json['destinationName'] as String?,
  pansionName: json['pansionName'] as String?,
  roomName: json['roomName'] as String?,
  tourStartDate: json['tourStartDate'] as String?,
  tourEndDate: json['tourEndDate'] as String?,
  isExternalTour: json['isExternalTour'] as bool?,
  isGdsFlight: json['isGdsFlight'] as bool?,
  imageUrls: (json['imageUrls'] as List<dynamic>?)
      ?.map((e) => e as String)
      .toList(),
  tourists: json['tourists'] == null
      ? null
      : TouristCountModel.fromJson(json['tourists'] as Map<String, dynamic>),
  attributes: json['attributes'] == null
      ? null
      : AttributesModel.fromJson(json['attributes'] as Map<String, dynamic>),
);
