import 'package:equatable/equatable.dart';
import 'package:sample/others/my_travels_repository/src/models/my_travel.dart';
import 'package:sample/presentation/screens/my_tour_detail/domain/entities/transfer.dart';

import 'gis_info.dart';
import 'customer.dart';
import 'tourists.dart';
import 'general_info.dart';
import 'flights.dart';
import 'other_services.dart';

class MyTour extends Equatable {
  final int? id;
  final String? number;
  final int? unreadMessages;
  final int? newDocuments;
  final int? stateStatus;
  final int? paymentStatus;
  final int? localPrice;
  final double? localPaid;
  final bool? hidePaymentButton;
  final GisInfo? gisInfo;
  final Customer? customer;///
  final List<Tourists>? tourists;  ///
  final GeneralInfo? generalInfo;
  final List<Flights>? flights;///
  final List<OtherServices>? otherServices;///
  final List<Transfer>? transfers;///

  const MyTour({
    this.id,
    this.number,
    this.unreadMessages,
    this.newDocuments,
    this.stateStatus,
    this.paymentStatus,
    this.localPrice,
    this.localPaid,
    this.hidePaymentButton,
    this.gisInfo,
    this.customer,
    this.tourists,
    this.generalInfo,
    this.flights,
    this.otherServices,
    this.transfers,
  });

  MyTour copyWith({
    int? id,
    String? number,
    int? unreadMessages,
    int? newDocuments,
    int? stateStatus,
    int? paymentStatus,
    int? localPrice,
    double? localPaid,
    bool? hidePaymentButton,
    GisInfo? gisInfo,
    Customer? customer,
    List<Tourists>? tourists,
    GeneralInfo? generalInfo,
    List<Flights>? flights,
    List<OtherServices>? otherServices,
    List<Transfer>? transfers,
  }) {
    return MyTour(
      transfers: transfers ?? this.transfers,
      id: id ?? this.id,
      number: number ?? this.number,
      unreadMessages: unreadMessages ?? this.unreadMessages,
      newDocuments: newDocuments ?? this.newDocuments,
      stateStatus: stateStatus ?? this.stateStatus,
      paymentStatus: paymentStatus ?? this.paymentStatus,
      localPrice: localPrice ?? this.localPrice,
      localPaid: localPaid ?? this.localPaid,
      hidePaymentButton: hidePaymentButton ?? this.hidePaymentButton,
      gisInfo: gisInfo ?? this.gisInfo,
      customer: customer ?? this.customer,
      tourists: tourists ?? this.tourists,
      generalInfo: generalInfo ?? this.generalInfo,
      flights: flights ?? this.flights,
      otherServices: otherServices ?? this.otherServices,
    );
  }

  @override
  List<Object?> get props => [
        id,
        number,
        unreadMessages,
        newDocuments,
        stateStatus,
        paymentStatus,
        localPrice,
        localPaid,
        hidePaymentButton,
        gisInfo,
        customer,
        tourists,
        generalInfo,
        flights,
        otherServices,
      ];

  factory MyTour.fromMyTravel(MyTravel travel) {
    return MyTour(
      id: travel.id,
      number: travel.number,
      unreadMessages: travel.unreadMessages,
      newDocuments: travel.newDocuments,
      stateStatus: travel.stateStatus,
      paymentStatus: travel.paymentStatus,
      localPrice: travel.localPrice?.toInt(),
      localPaid: travel.localPaid,
      hidePaymentButton: travel.hidePaymentButton,
    );
  }
}