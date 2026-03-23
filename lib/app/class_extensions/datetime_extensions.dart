import 'package:intl/intl.dart';

import '../package_import_lists/view_import_list.dart';

extension DBConversion on DateTime? {
  String? toDBFormat() => this?.toIso8601String();

  static DateTime? fromDBFormat(String? dbDateTime) =>
      dbDateTime == null ? null : DateTime.tryParse(dbDateTime);
}

extension DisplayHelpers on DateTime? {
  String toDayMonthYearWithTimeString() {
    var formatter = DateFormat('dd.MM.yyyy HH:mm');
    return this != null ? formatter.format(this!) : '';
  }

  String toDayMonthYearString() {
    var formatter = DateFormat('dd.MM.yyyy');
    return this != null ? formatter.format(this!) : '';
  }

  String toDayMonthString() {
    var formatter = DateFormat('dd.MM');
    return this != null ? formatter.format(this!) : '';
  }
}

extension DateStringToRichText on String {
  /// Преобразует строку с датой в формате ISO (2026-03-14T20:10:00) в RichText виджет
  /// с временем и сокращенной датой
  RichText toDateTimeRichText() {
    try {
      final dateTime = DateTime.parse(this);

      // Форматируем время (часы:минуты)
      final timeFormatter = DateFormat('HH:mm');
      final timeString = timeFormatter.format(dateTime);

      // Форматируем дату (день + сокращенный месяц)
      final dayFormatter = DateFormat('d');
      final monthFormatter = DateFormat(
        'MMM',
        'ru_RU',
      ); // Для русских названий месяцев

      final day = dayFormatter.format(dateTime);
      final month = monthFormatter.format(dateTime);

      return RichText(
        text: TextSpan(
          text: '$timeString\n',
          style: AppTextStyles.s16w500.copyWith(color: Pallete.greyText),
          children: [
            TextSpan(
              text: '$day $month.',
              style: AppTextStyles.s14w400.copyWith(color: Pallete.greyText6D),
            ),
          ],
        ),
      );
    } catch (e) {
      // В случае ошибки парсинга возвращаем пустой RichText
      return RichText(
        text: TextSpan(
          text: '',
          style: AppTextStyles.s16w500.copyWith(color: Pallete.greyText),
        ),
      );
    }
  }

  Widget? toDateTimeTextWithWeekday() {
    try {
      final dateTime = DateTime.parse(this);

      // Форматируем время (часы:минуты)
      final timeFormatter = DateFormat('HH:mm');
      final timeString = timeFormatter.format(dateTime);

      // Форматируем дату: день + сокращенный месяц + сокращенный день недели
      final day = DateFormat('d').format(dateTime);
      final month = DateFormat('MMM', 'ru_RU').format(dateTime);
      final weekday = DateFormat(
        'E',
        'ru_RU',
      ).format(dateTime); // Сокращенный день недели

      return Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Text(
            timeString,
            style: AppTextStyles.s14w500.copyWith(
              color: Pallete.greyText,
              height: 1,
            ),
          ),
          const SizedBox(height: 8),
          Text(
            '$day $month, $weekday',
            style: AppTextStyles.s12w400.copyWith(
              color: Pallete.greyText6D,
              height: 1,
            ),
          ),
        ],
      );
    } catch (e) {
      return null;
    }
  }

  /// Возвращает виджет с отформатированной разницей в часах
  String differenceInHoursWidget(String otherDateString) {
    try {
      final dateTime1 = DateTime.parse(this);
      final dateTime2 = DateTime.parse(otherDateString);

      final difference = dateTime1.difference(dateTime2);
      final totalHours =
          difference.inHours + (difference.inMinutes % 60) / 60.0;

      final absHours = totalHours.abs();

      String text;
      if (absHours % 1 == 0) {
        text = 'В пути ${absHours.toInt()} ч\n';
      } else {
        final hours = absHours.floor();
        final minutes = (absHours % 1 * 60).round();

        if (hours == 0) {
          text = 'В пути $minutes мин\n';
        } else if (minutes == 0) {
          text = 'В пути $hours ч\n';
        } else {
          text = 'В пути $hours ч $minutes мин\n';
        }
      }

      return text;
    } catch (e) {
      return "";
    }
  }
}
