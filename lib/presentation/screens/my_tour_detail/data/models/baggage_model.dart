import 'package:json_annotation/json_annotation.dart';
import '../../domain/entities/baggage.dart';

part 'baggage_model.g.dart';

@JsonSerializable(fieldRename: FieldRename.none, createToJson: false)
class BaggageModel extends Baggage {
  const BaggageModel({super.quantity, super.weight, super.weightUnit, super.dimensions});

  factory BaggageModel.fromJson(Map<String, dynamic> json) =>
      _$BaggageModelFromJson(json);
}