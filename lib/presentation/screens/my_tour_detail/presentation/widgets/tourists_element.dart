import 'package:intl/intl.dart';
import 'package:sample/app/class_extensions/datetime_extensions.dart';
import 'package:sample/presentation/screens/my_tour_detail/domain/entities/tourists.dart';

import '../../../../../app/package_import_lists/view_import_list.dart';

class TouristsElement extends StatelessWidget {
  const TouristsElement(this.tourist, {super.key});

  final Tourists tourist;

  @override
  Widget build(BuildContext context) => Column(
    crossAxisAlignment: CrossAxisAlignment.start,
    children: [
      Text(
        joinFields([tourist.firstName, tourist.lastName, tourist.patronymic]),
        style: AppTextStyles.s16w500.copyWith(color: Pallete.greyText),
      ),
      const SizedBox(height: 16),
      Row(
        children: [
          Text(
            '${tourist.personalDocumentSeries} ${tourist.personalDocumentNumber}',
            style: AppTextStyles.s16w400.copyWith(
              color: Pallete.greyText888,
              height: 1,
            ),
          ),
          const SizedBox(width: 16),
          Expanded(
            child: Text(
              DateFormat('dd.MM.yyyy').format(
                DateTime.parse(
                  tourist.birthDay ??
                      DateTime.now().toString(),
                ),
              ),
              style: AppTextStyles.s16w400.copyWith(
                color: Pallete.greyText888,
                height: 1,
              ),
            ),
          ),
        ],
      ),
      if ((tourist.visaInfo ?? '').isNotEmpty) ...[
        const SizedBox(height: 16),
        Text(
          tourist.visaInfo!,
          style: AppTextStyles.s16w500.copyWith(color: Pallete.greyText),
        ),
      ],
    ],
  );
}

String joinFields(
  List<String?> fields, {
  String separator = ' ',
  bool trimAll = true,
}) {
  return fields
      .where((field) => field != null && field.trim().isNotEmpty)
      .map((field) => trimAll ? field!.trim() : field!)
      .join(separator);
}
