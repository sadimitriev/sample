import 'package:equatable/equatable.dart';

class Customer extends Equatable {
  final String? email;
  final String? phoneNumber;
  final String? registrationAddress;
  final String? citizenship;
  final String? firstName;
  final String? lastName;
  final String? patronymic;
  final int? personalDocumentType;
  final String? personalDocumentSeries;
  final String? personalDocumentNumber;
  final String? birthDay;

  const Customer({
    this.email,
    this.phoneNumber,
    this.registrationAddress,
    this.citizenship,
    this.firstName,
    this.lastName,
    this.patronymic,
    this.personalDocumentType,
    this.personalDocumentSeries,
    this.personalDocumentNumber,
    this.birthDay,
  });

  Customer copyWith({
    String? email,
    String? phoneNumber,
    String? registrationAddress,
    String? citizenship,
    String? firstName,
    String? lastName,
    String? patronymic,
    int? personalDocumentType,
    String? personalDocumentSeries,
    String? personalDocumentNumber,
    String? birthDay,
  }) {
    return Customer(
      email: email ?? this.email,
      phoneNumber: phoneNumber ?? this.phoneNumber,
      registrationAddress: registrationAddress ?? this.registrationAddress,
      citizenship: citizenship ?? this.citizenship,
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
        email,
        phoneNumber,
        registrationAddress,
        citizenship,
        firstName,
        lastName,
        patronymic,
        personalDocumentType,
        personalDocumentSeries,
        personalDocumentNumber,
        birthDay,
      ];
}