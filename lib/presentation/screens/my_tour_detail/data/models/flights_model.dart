import 'package:json_annotation/json_annotation.dart';
import '../../domain/entities/flights.dart';
import 'rules_model.dart';
import 'segments_model.dart';

part 'flights_model.g.dart';

@JsonSerializable(fieldRename: FieldRename.none, explicitToJson: true, createToJson: false)
class FlightsModel extends Flights {
  const FlightsModel({
    super.name,
    super.isRegularFlight,
    super.isBackFlight,
    super.actualizableFlightsTimeLimit,
    super.airlineName,
    super.flightClassName,
    super.flightDuration,
    super.departureDate,
    super.departureDateText,
    super.departureTime,
    super.departureTimeText,
    super.departureCityName,
    super.departureAirportIata,
    super.arrivalDate,
    super.arrivalDateText,
    super.arrivalTime,
    super.arrivalTimeText,
    super.arrivalCityName,
    super.arrivalAirportIata,
    RulesModel? rules,                 // ← model type
    List<SegmentsModel>? segments,     // ← model type
    super.connections,
  }) : super(
    rules: rules,
    segments: segments,
  );

  factory FlightsModel.fromJson(Map<String, dynamic> json) =>
      _$FlightsModelFromJson(json);
}