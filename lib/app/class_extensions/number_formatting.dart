import 'package:intl/intl.dart';

extension NumberFormatting on num {
  String toSpacedString({int decimalDigits = 0}) {
    final formatter = NumberFormat.decimalPattern('ru');
    formatter.minimumFractionDigits = decimalDigits;
    formatter.maximumFractionDigits = decimalDigits;
    return formatter.format(this).replaceAll('\u00A0', ' ');
  }
}