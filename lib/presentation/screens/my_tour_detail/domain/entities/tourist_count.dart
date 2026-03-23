import 'package:equatable/equatable.dart';

class TouristCount extends Equatable {
  final int? adults;
  final int? children;

  const TouristCount({this.adults, this.children});

  TouristCount copyWith({int? adults, int? children}) {
    return TouristCount(
      adults: adults ?? this.adults,
      children: children ?? this.children,
    );
  }

  @override
  List<Object?> get props => [adults, children];
}