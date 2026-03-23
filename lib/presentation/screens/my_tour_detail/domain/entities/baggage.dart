import 'package:equatable/equatable.dart';

class Baggage extends Equatable {
  final int? quantity;
  final int? weight;
  final String? weightUnit;
  final String? dimensions;

  const Baggage({this.quantity, this.weight, this.weightUnit, this.dimensions});

  Baggage copyWith({
    int? quantity,
    int? weight,
    String? weightUnit,
    String? dimensions,
  }) {
    return Baggage(
      quantity: quantity ?? this.quantity,
      weight: weight ?? this.weight,
      weightUnit: weightUnit ?? this.weightUnit,
      dimensions: dimensions ?? this.dimensions,
    );
  }

  @override
  List<Object?> get props => [quantity, weight, weightUnit, dimensions];
}