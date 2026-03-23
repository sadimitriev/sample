import 'package:json_annotation/json_annotation.dart';
import '../../domain/entities/other_services.dart';

part 'other_services_model.g.dart';

@JsonSerializable(fieldRename: FieldRename.none, createToJson: false)
class OtherServicesModel extends OtherServices {
  const OtherServicesModel({super.name, super.count});

  factory OtherServicesModel.fromJson(Map<String, dynamic> json) =>
      _$OtherServicesModelFromJson(json);
}