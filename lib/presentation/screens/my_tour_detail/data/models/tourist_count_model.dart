import 'package:json_annotation/json_annotation.dart';
import '../../domain/entities/tourist_count.dart';

part 'tourist_count_model.g.dart';

@JsonSerializable(fieldRename: FieldRename.none, createToJson: false)
class TouristCountModel extends TouristCount {
  const TouristCountModel({super.adults, super.children});

  factory TouristCountModel.fromJson(Map<String, dynamic> json) =>
      _$TouristCountModelFromJson(json);
}