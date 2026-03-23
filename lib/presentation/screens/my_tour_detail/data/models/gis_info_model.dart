import 'package:json_annotation/json_annotation.dart';
import '../../domain/entities/gis_info.dart';

part 'gis_info_model.g.dart';

@JsonSerializable(fieldRename: FieldRename.none, createToJson: false)
class GisInfoModel extends GisInfo {
  const GisInfoModel({super.number, super.pin, super.verifyUrl});

  factory GisInfoModel.fromJson(Map<String, dynamic> json) =>
      _$GisInfoModelFromJson(json);
}