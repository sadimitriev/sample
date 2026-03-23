import 'package:equatable/equatable.dart';

import 'rules.dart';

class Segments extends Equatable {
  final String? icon;
  final String? departureCityName;
  final String? departureCityIata;
  final String? departureAirportIata;
  final String? departureAirportName;
  final String? arrivalCityName;
  final String? arrivalCityIata;
  final String? arrivalAirportIata;
  final String? arrivalAirportName;
  final String? airlineCode;
  final String? airlineName;
  final String? flightNumber;
  final String? startDate;
  final String? startTime;
  final String? endDate;
  final String? endTime;
  final String? plane;
  final int? durationInMinutes;
  final String? duration;
  final String? serviceClass;
  final Rules? rules;

  const Segments({
    this.icon,
    this.departureCityName,
    this.departureCityIata,
    this.departureAirportIata,
    this.departureAirportName,
    this.arrivalCityName,
    this.arrivalCityIata,
    this.arrivalAirportIata,
    this.arrivalAirportName,
    this.airlineCode,
    this.airlineName,
    this.flightNumber,
    this.startDate,
    this.startTime,
    this.endDate,
    this.endTime,
    this.plane,
    this.durationInMinutes,
    this.duration,
    this.serviceClass,
    this.rules,
  });

  Segments copyWith({
    String? icon,
    String? departureCityName,
    String? departureCityIata,
    String? departureAirportIata,
    String? departureAirportName,
    String? arrivalCityName,
    String? arrivalCityIata,
    String? arrivalAirportIata,
    String? arrivalAirportName,
    String? airlineCode,
    String? airlineName,
    String? flightNumber,
    String? startDate,
    String? startTime,
    String? endDate,
    String? endTime,
    String? plane,
    int? durationInMinutes,
    String? duration,
    String? serviceClass,
    Rules? rules,
  }) {
    return Segments(
      icon: icon ?? this.icon,
      departureCityName: departureCityName ?? this.departureCityName,
      departureCityIata: departureCityIata ?? this.departureCityIata,
      departureAirportIata: departureAirportIata ?? this.departureAirportIata,
      departureAirportName: departureAirportName ?? this.departureAirportName,
      arrivalCityName: arrivalCityName ?? this.arrivalCityName,
      arrivalCityIata: arrivalCityIata ?? this.arrivalCityIata,
      arrivalAirportIata: arrivalAirportIata ?? this.arrivalAirportIata,
      arrivalAirportName: arrivalAirportName ?? this.arrivalAirportName,
      airlineCode: airlineCode ?? this.airlineCode,
      airlineName: airlineName ?? this.airlineName,
      flightNumber: flightNumber ?? this.flightNumber,
      startDate: startDate ?? this.startDate,
      startTime: startTime ?? this.startTime,
      endDate: endDate ?? this.endDate,
      endTime: endTime ?? this.endTime,
      plane: plane ?? this.plane,
      durationInMinutes: durationInMinutes ?? this.durationInMinutes,
      duration: duration ?? this.duration,
      serviceClass: serviceClass ?? this.serviceClass,
      rules: rules ?? this.rules,
    );
  }

  @override
  List<Object?> get props => [
        icon,
        departureCityName,
        departureCityIata,
        departureAirportIata,
        departureAirportName,
        arrivalCityName,
        arrivalCityIata,
        arrivalAirportIata,
        arrivalAirportName,
        airlineCode,
        airlineName,
        flightNumber,
        startDate,
        startTime,
        endDate,
        endTime,
        plane,
        durationInMinutes,
        duration,
        serviceClass,
        rules,
      ];
}