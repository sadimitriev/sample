import 'package:equatable/equatable.dart';

import 'rules.dart';
import 'segments.dart';

class Flights extends Equatable {
  final String? name;
  final bool? isRegularFlight;
  final bool? isBackFlight;
  final String? actualizableFlightsTimeLimit;
  final String? airlineName;
  final String? flightClassName;
  final String? flightDuration;
  final String? departureDate;
  final String? departureDateText;
  final String? departureTime;
  final String? departureTimeText;
  final String? departureCityName;
  final String? departureAirportIata;
  final String? arrivalDate;
  final String? arrivalDateText;
  final String? arrivalTime;
  final String? arrivalTimeText;
  final String? arrivalCityName;
  final String? arrivalAirportIata;
  final Rules? rules;
  final List<Segments>? segments;
  final String? connections;

  const Flights({
    this.name,
    this.isRegularFlight,
    this.isBackFlight,
    this.actualizableFlightsTimeLimit,
    this.airlineName,
    this.flightClassName,
    this.flightDuration,
    this.departureDate,
    this.departureDateText,
    this.departureTime,
    this.departureTimeText,
    this.departureCityName,
    this.departureAirportIata,
    this.arrivalDate,
    this.arrivalDateText,
    this.arrivalTime,
    this.arrivalTimeText,
    this.arrivalCityName,
    this.arrivalAirportIata,
    this.rules,
    this.segments,
    this.connections,
  });

  Flights copyWith({
    String? name,
    bool? isRegularFlight,
    bool? isBackFlight,
    String? actualizableFlightsTimeLimit,
    String? airlineName,
    String? flightClassName,
    String? flightDuration,
    String? departureDate,
    String? departureDateText,
    String? departureTime,
    String? departureTimeText,
    String? departureCityName,
    String? departureAirportIata,
    String? arrivalDate,
    String? arrivalDateText,
    String? arrivalTime,
    String? arrivalTimeText,
    String? arrivalCityName,
    String? arrivalAirportIata,
    Rules? rules,
    List<Segments>? segments,
    String? connections,
  }) {
    return Flights(
      name: name ?? this.name,
      isRegularFlight: isRegularFlight ?? this.isRegularFlight,
      isBackFlight: isBackFlight ?? this.isBackFlight,
      actualizableFlightsTimeLimit: actualizableFlightsTimeLimit ?? this.actualizableFlightsTimeLimit,
      airlineName: airlineName ?? this.airlineName,
      flightClassName: flightClassName ?? this.flightClassName,
      flightDuration: flightDuration ?? this.flightDuration,
      departureDate: departureDate ?? this.departureDate,
      departureDateText: departureDateText ?? this.departureDateText,
      departureTime: departureTime ?? this.departureTime,
      departureTimeText: departureTimeText ?? this.departureTimeText,
      departureCityName: departureCityName ?? this.departureCityName,
      departureAirportIata: departureAirportIata ?? this.departureAirportIata,
      arrivalDate: arrivalDate ?? this.arrivalDate,
      arrivalDateText: arrivalDateText ?? this.arrivalDateText,
      arrivalTime: arrivalTime ?? this.arrivalTime,
      arrivalTimeText: arrivalTimeText ?? this.arrivalTimeText,
      arrivalCityName: arrivalCityName ?? this.arrivalCityName,
      arrivalAirportIata: arrivalAirportIata ?? this.arrivalAirportIata,
      rules: rules ?? this.rules,
      segments: segments ?? this.segments,
      connections: connections ?? this.connections,
    );
  }

  @override
  List<Object?> get props => [
        name,
        isRegularFlight,
        isBackFlight,
        actualizableFlightsTimeLimit,
        airlineName,
        flightClassName,
        flightDuration,
        departureDate,
        departureDateText,
        departureTime,
        departureTimeText,
        departureCityName,
        departureAirportIata,
        arrivalDate,
        arrivalDateText,
        arrivalTime,
        arrivalTimeText,
        arrivalCityName,
        arrivalAirportIata,
        rules,
        segments,
        connections,
      ];
}