// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'flights_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

FlightsModel _$FlightsModelFromJson(Map<String, dynamic> json) => FlightsModel(
  name: json['name'] as String?,
  isRegularFlight: json['isRegularFlight'] as bool?,
  isBackFlight: json['isBackFlight'] as bool?,
  actualizableFlightsTimeLimit: json['actualizableFlightsTimeLimit'] as String?,
  airlineName: json['airlineName'] as String?,
  flightClassName: json['flightClassName'] as String?,
  flightDuration: json['flightDuration'] as String?,
  departureDate: json['departureDate'] as String?,
  departureDateText: json['departureDateText'] as String?,
  departureTime: json['departureTime'] as String?,
  departureTimeText: json['departureTimeText'] as String?,
  departureCityName: json['departureCityName'] as String?,
  departureAirportIata: json['departureAirportIata'] as String?,
  arrivalDate: json['arrivalDate'] as String?,
  arrivalDateText: json['arrivalDateText'] as String?,
  arrivalTime: json['arrivalTime'] as String?,
  arrivalTimeText: json['arrivalTimeText'] as String?,
  arrivalCityName: json['arrivalCityName'] as String?,
  arrivalAirportIata: json['arrivalAirportIata'] as String?,
  rules: json['rules'] == null
      ? null
      : RulesModel.fromJson(json['rules'] as Map<String, dynamic>),
  segments: (json['segments'] as List<dynamic>?)
      ?.map((e) => SegmentsModel.fromJson(e as Map<String, dynamic>))
      .toList(),
  connections: json['connections'] as String?,
);
