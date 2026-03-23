import 'package:json_annotation/json_annotation.dart';
import '../../domain/entities/customer.dart';

part 'customer_model.g.dart';

@JsonSerializable(fieldRename: FieldRename.none, createToJson: false)
class CustomerModel extends Customer {
  const CustomerModel({
    super.email,
    super.phoneNumber,
    super.registrationAddress,
    super.citizenship,
    super.firstName,
    super.lastName,
    super.patronymic,
    super.personalDocumentType,
    super.personalDocumentSeries,
    super.personalDocumentNumber,
    super.birthDay,
  });

  factory CustomerModel.fromJson(Map<String, dynamic> json) =>
      _$CustomerModelFromJson(json);
}