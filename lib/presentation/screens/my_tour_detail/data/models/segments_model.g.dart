// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'segments_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

SegmentsModel _$SegmentsModelFromJson(Map<String, dynamic> json) =>
    SegmentsModel(
      icon: json['icon'] as String?,
      departureCityName: json['departureCityName'] as String?,
      departureCityIata: json['departureCityIata'] as String?,
      departureAirportIata: json['departureAirportIata'] as String?,
      departureAirportName: json['departureAirportName'] as String?,
      arrivalCityName: json['arrivalCityName'] as String?,
      arrivalCityIata: json['arrivalCityIata'] as String?,
      arrivalAirportIata: json['arrivalAirportIata'] as String?,
      arrivalAirportName: json['arrivalAirportName'] as String?,
      airlineCode: json['airlineCode'] as String?,
      airlineName: json['airlineName'] as String?,
      flightNumber: json['flightNumber'] as String?,
      startDate: json['startDate'] as String?,
      startTime: json['startTime'] as String?,
      endDate: json['endDate'] as String?,
      endTime: json['endTime'] as String?,
      plane: json['plane'] as String?,
      durationInMinutes: (json['durationInMinutes'] as num?)?.toInt(),
      duration: json['duration'] as String?,
      serviceClass: json['serviceClass'] as String?,
      rules: json['rules'] == null
          ? null
          : RulesModel.fromJson(json['rules'] as Map<String, dynamic>),
    );
