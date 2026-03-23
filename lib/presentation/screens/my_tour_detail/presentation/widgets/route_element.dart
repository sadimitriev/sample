import 'package:cached_network_image/cached_network_image.dart';
import 'package:sample/app/class_extensions/datetime_extensions.dart';
import 'package:sample/app/feature/format_date_range.dart';
import 'package:sample/presentation/screens/my_tour_detail/domain/entities/flights.dart';

import '../../../../../app/package_import_lists/view_import_list.dart';

class RouteElement extends StatelessWidget {
  const RouteElement(this.flight, {super.key});

  final Flights flight;

  @override
  Widget build(BuildContext context) => Column(
    crossAxisAlignment: CrossAxisAlignment.start,
    children: [
      const SizedBox(height: 8),
      Text(
        '${(flight.departureCityName?.isNotEmpty ?? false) ? flight.departureCityName : 'Err'} — ${(flight.arrivalCityName?.isNotEmpty ?? false) ? flight.arrivalCityName : 'Err'}',
        style: AppTextStyles.s16w500.copyWith(color: Pallete.greyText),
      ),
      const SizedBox(height: 16),
      Row(
        children: [
          flight.departureDate?.toDateTimeRichText() ??
              Text(
                'Err',
                style: AppTextStyles.s16w500.copyWith(color: Pallete.greyText),
              ),
          const SizedBox(width: 16),
          Text(
            '—',
            style: AppTextStyles.s16w500.copyWith(color: Pallete.greyText),
          ),
          const SizedBox(width: 16),
          flight.arrivalDate?.toDateTimeRichText() ??
              Text(
                'Err',
                style: AppTextStyles.s16w500.copyWith(color: Pallete.greyText),
              ),
          const Expanded(child: SizedBox()),
          Column(
            crossAxisAlignment: CrossAxisAlignment.end,
            children: [
              RichText(
                text: TextSpan(
                  text: flight.arrivalDate?.differenceInHoursWidget(
                    flight.departureDate ?? '',
                  ),
                  style: AppTextStyles.s12w400.copyWith(
                    color: Pallete.greyText,
                  ),
                  children: [
                    TextSpan(
                      text: formatLength(flight.segments?.length ?? 0),
                      style: TextStyle(color: Pallete.greyText6D),
                    ),
                  ],
                ),
              ),
              const SizedBox(height: 12),
              SizedBox(
                height: 20,
                child: ListView.separated(
                  scrollDirection: Axis.horizontal,
                  shrinkWrap: true,
                  physics: NeverScrollableScrollPhysics(),
                  padding: EdgeInsets.only(bottom: 24),
                  itemCount: flight.segments!.length,
                  itemBuilder: (BuildContext context, int index) =>
                      CachedNetworkImage(
                        imageUrl: flight.segments![index].icon ?? '',
                        imageBuilder: (context, imageProvider) => Container(
                          height: 20,
                          width: 20,
                          alignment: Alignment.center,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(5),
                            color: Pallete.blackText3d,
                            image: DecorationImage(
                              image: imageProvider,
                              fit: BoxFit.cover,
                              colorFilter: ColorFilter.mode(
                                Colors.red,
                                BlendMode.colorBurn,
                              ),
                            ),
                          ),
                        ),
                        placeholder: (context, url) => SizedBox(
                          height: 20,
                          width: 20,
                          child: Center(child: CircularProgressIndicator()),
                        ),
                        errorWidget: (context, url, error) => SizedBox(
                          height: 20,
                          width: 20,
                          child: Center(
                            child: Icon(
                              Icons.error,
                              color: Pallete.greyText888,
                            ),
                          ),
                        ),
                      ),
                  separatorBuilder: (context, index) =>
                      const SizedBox(width: 4),
                ),
              ),
              /*Row(
                children: [

                  const SizedBox(width: 4),
                  Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(5),
                      color: Pallete.greyPriceBar,
                    ),
                    height: 20,
                    width: 20,
                    alignment: Alignment.center,
                    child: Text(
                      '+1',
                      style: AppTextStyles.s10w400.copyWith(
                        color: Pallete.greyText,
                      ),
                      textAlign: TextAlign.center,
                    ),
                  ),
                ],
              ),*/
            ],
          ),
        ],
      ),
      const SizedBox(height: 16),
    ],
  );
}
