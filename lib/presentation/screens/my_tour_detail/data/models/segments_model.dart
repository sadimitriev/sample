import 'package:json_annotation/json_annotation.dart';
import '../../domain/entities/segments.dart';
import 'rules_model.dart';

part 'segments_model.g.dart';

@JsonSerializable(
  fieldRename: FieldRename.none,
  explicitToJson: true,
  createToJson: false,
)
class SegmentsModel extends Segments {
  const SegmentsModel({
    super.icon,
    super.departureCityName,
    super.departureCityIata,
    super.departureAirportIata,
    super.departureAirportName,
    super.arrivalCityName,
    super.arrivalCityIata,
    super.arrivalAirportIata,
    super.arrivalAirportName,
    super.airlineCode,
    super.airlineName,
    super.flightNumber,
    super.startDate,
    super.startTime,
    super.endDate,
    super.endTime,
    super.plane,
    super.durationInMinutes,
    super.duration,
    super.serviceClass,
    RulesModel? rules,  // ← model type
  }) : super(rules: rules);

  factory SegmentsModel.fromJson(Map<String, dynamic> json) =>
      _$SegmentsModelFromJson(json);
}