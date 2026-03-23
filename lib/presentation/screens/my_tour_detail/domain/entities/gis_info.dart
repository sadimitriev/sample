import 'package:equatable/equatable.dart';

class GisInfo extends Equatable {
  final String? number;
  final String? pin;
  final String? verifyUrl;

  const GisInfo({this.number, this.pin, this.verifyUrl});

  GisInfo copyWith({String? number, String? pin, String? verifyUrl}) {
    return GisInfo(
      number: number ?? this.number,
      pin: pin ?? this.pin,
      verifyUrl: verifyUrl ?? this.verifyUrl,
    );
  }

  @override
  List<Object?> get props => [number, pin, verifyUrl];
}