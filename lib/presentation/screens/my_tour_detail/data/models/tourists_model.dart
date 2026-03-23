import 'package:json_annotation/json_annotation.dart';
import '../../domain/entities/tourists.dart';

part 'tourists_model.g.dart';

@JsonSerializable(fieldRename: FieldRename.none, createToJson: false)
class TouristsModel extends Tourists {
  const TouristsModel({
    super.visaInfo,
    super.firstName,
    super.lastName,
    super.patronymic,
    super.personalDocumentType,
    super.personalDocumentSeries,
    super.personalDocumentNumber,
    super.birthDay,
  });

  factory TouristsModel.fromJson(Map<String, dynamic> json) =>
      _$TouristsModelFromJson(json);
}