import 'package:equatable/equatable.dart';

class Tourists extends Equatable {
  final String? visaInfo;
  final String? firstName;
  final String? lastName;
  final String? patronymic;
  final int? personalDocumentType;
  final String? personalDocumentSeries;
  final String? personalDocumentNumber;
  final String? birthDay;

  const Tourists({
    this.visaInfo,
    this.firstName,
    this.lastName,
    this.patronymic,
    this.personalDocumentType,
    this.personalDocumentSeries,
    this.personalDocumentNumber,
    this.birthDay,
  });

  Tourists copyWith({
    String? visaInfo,
    String? firstName,
    String? lastName,
    String? patronymic,
    int? personalDocumentType,
    String? personalDocumentSeries,
    String? personalDocumentNumber,
    String? birthDay,
  }) {
    return Tourists(
      visaInfo: visaInfo ?? this.visaInfo,
      firstName: firstName ?? this.firstName,
      lastName: lastName ?? this.lastName,
      patronymic: patronymic ?? this.patronymic,
      personalDocumentType: personalDocumentType ?? this.personalDocumentType,
      personalDocumentSeries: personalDocumentSeries ?? this.personalDocumentSeries,
      personalDocumentNumber: personalDocumentNumber ?? this.personalDocumentNumber,
      birthDay: birthDay ?? this.birthDay,
    );
  }

  @override
  List<Object?> get props => [
        visaInfo,
        firstName,
        lastName,
        patronymic,
        personalDocumentType,
        personalDocumentSeries,
        personalDocumentNumber,
        birthDay,
      ];
}