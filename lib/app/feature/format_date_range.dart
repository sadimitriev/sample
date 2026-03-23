import 'package:intl/intl.dart';

String formatDateRange(String? start, String? end) {
  final String startStr = start != null
      ? DateFormat('dd.MM.yy').format(DateTime.parse(start))
      : '';
  final String endStr = end != null
      ? DateFormat('dd.MM.yy').format(DateTime.parse(end))
      : '';

  if (start != null && end != null) {
    return '$startStr - $endStr';
  } else if (start != null) {
    return '$startStr - ';
  } else if (end != null) {
    return ' - $endStr';
  } else {
    return '';
  }
}

String formatDateRangeWithNightsText(String? start, String? end) {
  if (start == null || end == null) {
    return '';
  }

  try {
    final DateTime startDate = DateTime.parse(start);
    final DateTime endDate = DateTime.parse(end);

    final String startStr = DateFormat('dd.MM.yy').format(startDate);
    final String endStr = DateFormat('dd.MM.yy').format(endDate);

    final int nights = endDate.difference(startDate).inDays;

    // Склонение слова "ночь"
    String nightsText;
    if (nights % 10 == 1 && nights % 100 != 11) {
      nightsText = 'ночь';
    } else if (nights % 10 >= 2 && nights % 10 <= 4 && (nights % 100 < 10 || nights % 100 >= 20)) {
      nightsText = 'ночи';
    } else {
      nightsText = 'ночей';
    }

    return '$startStr — $endStr на $nights $nightsText';
  } catch (e) {
    return '';
  }
}

String formatLength(int length) {
  try {
    String nightsText;
    if (length == 0) {
      nightsText = 'пересадок';
    } else if (length % 10 == 1 && length % 100 != 11) {
      nightsText = 'пересадка';
    } else if (length % 10 >= 2 && length % 10 <= 4 && (length % 100 < 10 || length % 100 >= 20)) {
      nightsText = 'пересадки';
    } else {
      nightsText = 'пересадок';
    }

    return '$length $nightsText';
  } catch (e) {
    return '';
  }
}