import 'package:equatable/equatable.dart';

class Attributes extends Equatable {
  final bool? isIntouristTour;
  final bool? isMomentConfirm;
  final bool? isNonRefundable;
  final String? tourProviderName;
  final bool? isGDSFlight;
  final bool? isOwnTour;

  const Attributes({
    this.isIntouristTour,
    this.isMomentConfirm,
    this.isNonRefundable,
    this.tourProviderName,
    this.isGDSFlight,
    this.isOwnTour,
  });

  Attributes copyWith({
    bool? isIntouristTour,
    bool? isMomentConfirm,
    bool? isNonRefundable,
    String? tourProviderName,
    bool? isGDSFlight,
    bool? isOwnTour,
  }) {
    return Attributes(
      isIntouristTour: isIntouristTour ?? this.isIntouristTour,
      isMomentConfirm: isMomentConfirm ?? this.isMomentConfirm,
      isNonRefundable: isNonRefundable ?? this.isNonRefundable,
      tourProviderName: tourProviderName ?? this.tourProviderName,
      isGDSFlight: isGDSFlight ?? this.isGDSFlight,
      isOwnTour: isOwnTour ?? this.isOwnTour,
    );
  }

  @override
  List<Object?> get props => [
        isIntouristTour,
        isMomentConfirm,
        isNonRefundable,
        tourProviderName,
        isGDSFlight,
        isOwnTour,
      ];
}