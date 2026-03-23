import 'package:equatable/equatable.dart';

import 'baggage.dart';

class Rules extends Equatable {
  final bool? isReturnTicket;
  final bool? isChangeableTicket;
  final Baggage? baggage;
  final Baggage? cabinBaggage;
  final Baggage? baggageForInfantWithoutSeat;

  const Rules({
    this.isReturnTicket,
    this.isChangeableTicket,
    this.baggage,
    this.cabinBaggage,
    this.baggageForInfantWithoutSeat,
  });

  Rules copyWith({
    bool? isReturnTicket,
    bool? isChangeableTicket,
    Baggage? baggage,
    Baggage? cabinBaggage,
    Baggage? baggageForInfantWithoutSeat,
  }) {
    return Rules(
      isReturnTicket: isReturnTicket ?? this.isReturnTicket,
      isChangeableTicket: isChangeableTicket ?? this.isChangeableTicket,
      baggage: baggage ?? this.baggage,
      cabinBaggage: cabinBaggage ?? this.cabinBaggage,
      baggageForInfantWithoutSeat: baggageForInfantWithoutSeat ?? this.baggageForInfantWithoutSeat,
    );
  }

  @override
  List<Object?> get props => [
        isReturnTicket,
        isChangeableTicket,
        baggage,
        cabinBaggage,
        baggageForInfantWithoutSeat,
      ];
}