// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'my_tour_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

MyTourModel _$MyTourModelFromJson(Map<String, dynamic> json) => MyTourModel(
  id: (json['id'] as num?)?.toInt(),
  number: json['number'] as String?,
  unreadMessages: (json['unreadMessages'] as num?)?.toInt(),
  newDocuments: (json['newDocuments'] as num?)?.toInt(),
  stateStatus: (json['stateStatus'] as num?)?.toInt(),
  paymentStatus: (json['paymentStatus'] as num?)?.toInt(),
  localPrice: (json['localPrice'] as num?)?.toInt(),
  localPaid: (json['localPaid'] as num?)?.toDouble(),
  hidePaymentButton: json['hidePaymentButton'] as bool?,
  gisInfo: json['gisInfo'] == null
      ? null
      : GisInfoModel.fromJson(json['gisInfo'] as Map<String, dynamic>),
  customer: json['customer'] == null
      ? null
      : CustomerModel.fromJson(json['customer'] as Map<String, dynamic>),
  tourists: (json['tourists'] as List<dynamic>?)
      ?.map((e) => TouristsModel.fromJson(e as Map<String, dynamic>))
      .toList(),
  generalInfo: json['generalInfo'] == null
      ? null
      : GeneralInfoModel.fromJson(json['generalInfo'] as Map<String, dynamic>),
  flights: (json['flights'] as List<dynamic>?)
      ?.map((e) => FlightsModel.fromJson(e as Map<String, dynamic>))
      .toList(),
  otherServices: (json['otherServices'] as List<dynamic>?)
      ?.map((e) => OtherServicesModel.fromJson(e as Map<String, dynamic>))
      .toList(),
  transfers: (json['transfers'] as List<dynamic>?)
      ?.map((e) => TransferModel.fromJson(e as Map<String, dynamic>))
      .toList(),
);
