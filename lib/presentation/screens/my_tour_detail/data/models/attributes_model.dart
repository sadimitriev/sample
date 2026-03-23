import 'package:json_annotation/json_annotation.dart';
import '../../domain/entities/attributes.dart';

part 'attributes_model.g.dart';

@JsonSerializable(fieldRename: FieldRename.none, createToJson: false)
class AttributesModel extends Attributes {
  const AttributesModel({
    super.isIntouristTour,
    super.isMomentConfirm,
    super.isNonRefundable,
    super.tourProviderName,
    super.isGDSFlight,
    super.isOwnTour,
  });

  factory AttributesModel.fromJson(Map<String, dynamic> json) =>
      _$AttributesModelFromJson(json);
}