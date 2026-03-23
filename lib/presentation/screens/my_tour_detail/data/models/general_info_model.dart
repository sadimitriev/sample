import 'package:json_annotation/json_annotation.dart';
import '../../domain/entities/general_info.dart';
import 'tourist_count_model.dart';
import 'attributes_model.dart';

part 'general_info_model.g.dart';

@JsonSerializable(fieldRename: FieldRename.none, explicitToJson: true, createToJson: false)
class GeneralInfoModel extends GeneralInfo {
  const GeneralInfoModel({
    super.hotelName,
    super.destinationName,
    super.pansionName,
    super.roomName,
    super.tourStartDate,
    super.tourEndDate,
    super.isExternalTour,
    super.isGdsFlight,
    super.imageUrls,
    TouristCountModel? tourists,   // ← model type
    AttributesModel? attributes,    // ← model type
  }) : super(
    tourists: tourists,
    attributes: attributes,
  );

  factory GeneralInfoModel.fromJson(Map<String, dynamic> json) =>
      _$GeneralInfoModelFromJson(json);
}