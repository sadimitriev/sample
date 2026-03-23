import 'package:flutter/cupertino.dart';
import 'package:sample/app/constants/icons.dart';
import 'package:sample/app/package_import_lists/view_import_list.dart';

enum TourStatus {
  confirmed,
  paid,
  completed,
  pending,
  unconfirmed,
  overpaid;

  String? getIcon() => switch (this) {
    TourStatus.confirmed => Asset.svg.confirmed,
    TourStatus.paid => null,
    TourStatus.completed => Asset.svg.completed,
    TourStatus.pending => null,
    TourStatus.unconfirmed => Asset.svg.unconfirmed,
    TourStatus.overpaid => null,
  };

  Color getColor() => switch (this) {
  TourStatus.confirmed => Pallete.confirmed,
  TourStatus.paid => Pallete.paid,
  TourStatus.completed => Pallete.completed,
  TourStatus.pending => Pallete.pending,
  TourStatus.unconfirmed => Pallete.unconfirmed,
  TourStatus.overpaid => Pallete.overpaid,
  };

  String getName() => switch (this) {
    TourStatus.confirmed => "Подтверждено",
    TourStatus.paid => "Оплачено",
    TourStatus.completed => "Завершено",
    TourStatus.pending => "Требует оплаты",
    TourStatus.unconfirmed => "Не подтверждено",
    TourStatus.overpaid => "Переплата",
  };
}
