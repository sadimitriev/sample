import 'package:sample/presentation/screens/my_tour_detail/data/models/transfer_model.dart';
import 'package:sample/presentation/screens/my_tour_detail/domain/entities/transfer.dart';
import 'package:json_annotation/json_annotation.dart';

import '../../domain/entities/my_tour.dart';
import 'gis_info_model.dart';
import 'customer_model.dart';
import 'tourists_model.dart';
import 'general_info_model.dart';
import 'flights_model.dart';
import 'other_services_model.dart';

part 'my_tour_model.g.dart';

@JsonSerializable(
  fieldRename: FieldRename.none,
  explicitToJson: true,
  createToJson: false,
)
class MyTourModel extends MyTour {
  const MyTourModel({
    super.id,
    super.number,
    super.unreadMessages,
    super.newDocuments,
    super.stateStatus,
    super.paymentStatus,
    super.localPrice,
    super.localPaid,
    super.hidePaymentButton,
    GisInfoModel? gisInfo,               // ← use model type
    CustomerModel? customer,              // ← use model type
    List<TouristsModel>? tourists,        // ← use model type
    GeneralInfoModel? generalInfo,         // ← use model type
    List<FlightsModel>? flights,           // ← use model type
    List<OtherServicesModel>? otherServices, // ← use model type
    List<TransferModel>? transfers,
  }) : super(
    gisInfo: gisInfo,
    customer: customer,
    tourists: tourists,
    generalInfo: generalInfo,
    flights: flights,
    otherServices: otherServices,
    transfers: transfers,
  );

  factory MyTourModel.fromJson(Map<String, dynamic> json) =>
      _$MyTourModelFromJson(json);
}