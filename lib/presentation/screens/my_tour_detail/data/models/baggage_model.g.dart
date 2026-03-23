// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'baggage_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

BaggageModel _$BaggageModelFromJson(Map<String, dynamic> json) => BaggageModel(
  quantity: (json['quantity'] as num?)?.toInt(),
  weight: (json['weight'] as num?)?.toInt(),
  weightUnit: json['weightUnit'] as String?,
  dimensions: json['dimensions'] as String?,
);
