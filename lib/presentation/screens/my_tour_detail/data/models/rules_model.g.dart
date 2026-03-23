// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'rules_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

RulesModel _$RulesModelFromJson(Map<String, dynamic> json) => RulesModel(
  isReturnTicket: json['isReturnTicket'] as bool?,
  isChangeableTicket: json['isChangeableTicket'] as bool?,
  baggage: json['baggage'] == null
      ? null
      : BaggageModel.fromJson(json['baggage'] as Map<String, dynamic>),
  cabinBaggage: json['cabinBaggage'] == null
      ? null
      : BaggageModel.fromJson(json['cabinBaggage'] as Map<String, dynamic>),
  baggageForInfantWithoutSeat: json['baggageForInfantWithoutSeat'] == null
      ? null
      : BaggageModel.fromJson(
          json['baggageForInfantWithoutSeat'] as Map<String, dynamic>,
        ),
);
