import 'package:json_annotation/json_annotation.dart';
import '../../domain/entities/rules.dart';
import 'baggage_model.dart';

part 'rules_model.g.dart';

@JsonSerializable(
  fieldRename: FieldRename.none,
  explicitToJson: true,
  createToJson: false,
)
class RulesModel extends Rules {
  const RulesModel({
    super.isReturnTicket,
    super.isChangeableTicket,
    BaggageModel? baggage,               // ← model type
    BaggageModel? cabinBaggage,           // ← model type
    BaggageModel? baggageForInfantWithoutSeat, // ← model type
  }) : super(
    baggage: baggage,
    cabinBaggage: cabinBaggage,
    baggageForInfantWithoutSeat: baggageForInfantWithoutSeat,
  );

  factory RulesModel.fromJson(Map<String, dynamic> json) =>
      _$RulesModelFromJson(json);
}