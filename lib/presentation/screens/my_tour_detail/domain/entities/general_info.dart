import 'package:equatable/equatable.dart';

import 'tourist_count.dart';
import 'attributes.dart';

class GeneralInfo extends Equatable {
  final String? hotelName;
  final String? destinationName;
  final String? pansionName;
  final String? roomName;
  final String? tourStartDate;
  final String? tourEndDate;
  final bool? isExternalTour;
  final bool? isGdsFlight;
  final List<String>? imageUrls;
  final TouristCount? tourists;
  final Attributes? attributes;

  const GeneralInfo({
    this.hotelName,
    this.destinationName,
    this.pansionName,
    this.roomName,
    this.tourStartDate,
    this.tourEndDate,
    this.isExternalTour,
    this.isGdsFlight,
    this.imageUrls,
    this.tourists,
    this.attributes,
  });

  GeneralInfo copyWith({
    String? hotelName,
    String? destinationName,
    String? pansionName,
    String? roomName,
    String? tourStartDate,
    String? tourEndDate,
    bool? isExternalTour,
    bool? isGdsFlight,
    List<String>? imageUrls,
    TouristCount? tourists,
    Attributes? attributes,
  }) {
    return GeneralInfo(
      hotelName: hotelName ?? this.hotelName,
      destinationName: destinationName ?? this.destinationName,
      pansionName: pansionName ?? this.pansionName,
      roomName: roomName ?? this.roomName,
      tourStartDate: tourStartDate ?? this.tourStartDate,
      tourEndDate: tourEndDate ?? this.tourEndDate,
      isExternalTour: isExternalTour ?? this.isExternalTour,
      isGdsFlight: isGdsFlight ?? this.isGdsFlight,
      imageUrls: imageUrls ?? this.imageUrls,
      tourists: tourists ?? this.tourists,
      attributes: attributes ?? this.attributes,
    );
  }

  @override
  List<Object?> get props => [
        hotelName,
        destinationName,
        pansionName,
        roomName,
        tourStartDate,
        tourEndDate,
        isExternalTour,
        isGdsFlight,
        imageUrls,
        tourists,
        attributes,
      ];
}