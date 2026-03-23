import 'package:formz/formz.dart';
import 'package:sample/app/feature/format_date_range.dart';
import 'package:sample/app/navigation/router/router.dart';
import 'package:sample/injection_container.dart';
import 'package:sample/others/my_travels_repository/src/models/my_travel.dart';
import 'package:sample/presentation/screens/my_tour_detail/domain/entities/my_tour.dart';
import 'package:sample/presentation/screens/my_tour_detail/presentation/blocs/tour_detail_cubit/tour_detail_cubit.dart';
import 'package:sample/presentation/screens/my_tour_detail/presentation/widgets/retry.dart';
import 'package:sample/presentation/screens/my_tour_detail/presentation/widgets/route_element.dart';
import 'package:sample/presentation/screens/my_tour_detail/presentation/widgets/tourists_element.dart';
import 'package:sample/presentation/screens/my_travels/widgets/big_tour_button.dart';
import 'package:sample/presentation/screens/my_travels/widgets/statuses.dart';
import 'package:sample/presentation/screens/my_travels/widgets/tour_button.dart';
import 'package:sample/presentation/widgets/action_button.dart';
import 'package:sample/presentation/widgets/appbar.dart';
import 'package:sample/presentation/widgets/center_loader.dart';

import '../../../../../app/class_extensions/number_formatting.dart';
import '../../../../../app/package_import_lists/view_import_list.dart';

@RoutePage()
class MyTourDetailPage extends StatefulWidget implements AutoRouteWrapper {
  const MyTourDetailPage({super.key, required this.tour});

  final MyTravel tour;

  @override
  Widget wrappedRoute(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider<TourDetailCubit>(
          create: (context) => sl(param1: MyTour.fromMyTravel(tour))..getTour(),
        ),
      ],
      child: this,
    );
  }

  @override
  State<MyTourDetailPage> createState() => _MyTourDetailPageState();
}

class _MyTourDetailPageState extends State<MyTourDetailPage> {
  @override
  Widget build(BuildContext context) => Scaffold(
    appBar: CustomAppBar(title: "Заказ № ${widget.tour.id}"),
    backgroundColor: Pallete.bg,
    body: Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16),
      child: BlocConsumer<TourDetailCubit, TourDetailState>(
        listener: (context, tourState) {},
        builder: (_, tourState) {
          if (tourState.status.isInProgress) {
            return const CenterLoader();
          } else if (tourState.status.isFailure) {
            return Retry(
              error: tourState.errorMessage,
              onRefresh: () {
                context.read<TourDetailCubit>().getTour();
              },
            );
          } else if (tourState.status.isSuccess) {
            if (tourState.tour == null) {
              return Center(child: Text("Empty"));
            }
            final flights =
                tourState.tour!.flights
                    ?.where((flight) => flight.segments?.isNotEmpty ?? false)
                    .toList() ??
                [];
            return SingleChildScrollView(
              child: SafeArea(
                child: Column(
                  children: [
                    const SizedBox(height: 24),
                    Container(
                      clipBehavior: Clip.hardEdge,
                      decoration: BoxDecoration(
                        color: Pallete.whiteColor,
                        borderRadius: BorderRadius.circular(16),
                      ),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Container(
                            padding: EdgeInsets.symmetric(
                              vertical: 16,
                              horizontal: 12,
                            ),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Row(
                                  children: [
                                    SizedBox(
                                      height: 16,
                                      width: 16,
                                      child: Center(
                                        child: SvgPicture.asset(
                                          Asset.svg.mapPin,
                                        ),
                                      ),
                                    ),
                                    const SizedBox(width: 8),
                                    Text(
                                      widget.tour.destinationName ??
                                          "Название отсутствует",
                                      style: AppTextStyles.s14w400.copyWith(
                                        color: Pallete.blackText3d,
                                      ),
                                    ),
                                  ],
                                ),
                                const SizedBox(height: 12),
                                Text(
                                  widget.tour.hotelName ??
                                      "Название отсутствует",
                                  style: AppTextStyles.s16w700.copyWith(
                                    color: Pallete.blackText3d,
                                  ),
                                ),
                                const SizedBox(height: 16),
                                dateWidget(),
                                const SizedBox(height: 24),
                                Statuses(),
                                const SizedBox(height: 24),
                                price(),
                                const SizedBox(height: 16),
                                TourButton.info(
                                  onPressed: () => AutoRouter.of(context).push(
                                    FinanceFullInfoRoute(tour: tourState.tour!),
                                  ),
                                ),
                                const SizedBox(height: 16),
                                (widget.tour.hidePaymentButton ?? false)
                                    ? ActionButton(
                                        buttonText: "Оплатить",
                                        onPressed: () =>
                                            DelayedAction.run(() {}),
                                      )
                                    : const SizedBox(),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),

                    const SizedBox(height: 24),
                    BigTourButton.messages(
                      count: tourState.tour?.unreadMessages ?? 0,
                    ),
                    const SizedBox(height: 12),
                    BigTourButton.documents(
                      onPressed: () => AutoRouter.of(
                        context,
                      ).push(DocumentsRoute(tour: tourState.tour!)),
                      count: tourState.tour?.newDocuments ?? 0,
                    ),
                    if (tourState.tour?.flights != null &&
                        tourState.tour!.flights!.isNotEmpty) ...[
                      const SizedBox(height: 12),
                      BigTourButton.avia(
                        onPressed: () => AutoRouter.of(
                          context,
                        ).push(FlightsRoute(tour: tourState.tour!)),
                        child: Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 16),
                          child: ListView.separated(
                            shrinkWrap: true,
                            physics: NeverScrollableScrollPhysics(),
                            padding: EdgeInsets.only(bottom: 24),
                            itemCount: flights.length,
                            itemBuilder: (BuildContext context, int index) =>
                                RouteElement(flights[index]),
                            separatorBuilder: (context, index) => Container(
                              margin: EdgeInsets.symmetric(vertical: 24),
                              height: 1,
                              color: Pallete.greyPriceBar,
                            ),
                          ),
                        ),
                      ),
                    ],

                    const SizedBox(height: 12),
                    BigTourButton.peoples(
                      child: (tourState.tour!.tourists?.isNotEmpty ?? false)
                          ? Padding(
                              padding: const EdgeInsets.symmetric(
                                horizontal: 16,
                              ),
                              child: Column(
                                children: [
                                  ListView.separated(
                                    shrinkWrap: true,
                                    physics: NeverScrollableScrollPhysics(),
                                    padding: EdgeInsets.zero,
                                    itemCount:
                                        tourState.tour!.tourists?.length ?? 0,
                                    itemBuilder:
                                        (BuildContext context, int index) =>
                                            TouristsElement(
                                              tourState.tour!.tourists![index],
                                            ),
                                    separatorBuilder: (context, index) =>
                                        Container(
                                          margin: EdgeInsets.symmetric(
                                            vertical: 24,
                                          ),
                                          height: 1,
                                          color: Pallete.greyPriceBar,
                                        ),
                                  ),
                                  const SizedBox(height: 16),
                                ],
                              ),
                            )
                          : const SizedBox(),
                    ),
                    const SizedBox(height: 12),
                    BigTourButton.info(
                      onPressed: () => AutoRouter.of(context).push(
                        GisInfoRoute(info: tourState.tour?.gisInfo),
                      ),
                    ),
                    const SizedBox(height: 12),
                    BigTourButton.buyer(
                      onPressed: () => AutoRouter.of(
                        context,
                      ).push(BuyerRoute(customer: tourState.tour?.customer)),
                    ),
                    const SizedBox(height: 12),
                    BigTourButton.accommodation(),
                    const SizedBox(height: 12),
                    BigTourButton.insurance(
                      onPressed: () => AutoRouter.of(context).push(
                        InsuranceRoute(transfers: tourState.tour?.transfers),
                      ),
                    ),
                    const SizedBox(height: 12),
                    BigTourButton.transfers(
                      onPressed: () => AutoRouter.of(context).push(
                        TransferRoute(transfers: tourState.tour?.transfers),
                      ),
                    ),
                    const SizedBox(height: 12),
                    BigTourButton.excursions(
                      onPressed: () => AutoRouter.of(context).push(
                        ExcursionsRoute(transfers: tourState.tour?.transfers),
                      ),
                    ),
                    const SizedBox(height: 12),
                    BigTourButton.services(
                      onPressed: () => AutoRouter.of(context).push(
                        OtherServicesRoute(
                          services: tourState.tour?.otherServices,
                        ),
                      ),
                    ),
                    const SizedBox(height: 12),
                    BigTourButton.terms(
                      onPressed: () =>
                          AutoRouter.of(context).push(ConditionsRoute()),
                    ),
                  ],
                ),
              ),
            );
          } else {
            return const SizedBox.shrink();
          }
        },
      ),
    ),
  );

  Widget price() =>
      (widget.tour.localPaid != null && widget.tour.localPaid != 0)
      ? Column(
          children: [
            Row(
              children: [
                Text(
                  "${widget.tour.localPaid!.toSpacedString()} ₽",
                  style: AppTextStyles.s20w700.copyWith(
                    color: Pallete.blackText3d,
                  ),
                ),
                if (widget.tour.localPrice != null &&
                    widget.tour.localPrice != 0) ...[
                  const SizedBox(width: 8),
                  Text(
                    "из ${widget.tour.localPrice!.toSpacedString()} ₽",
                    style: AppTextStyles.s14w400.copyWith(
                      color: Pallete.blackText3d,
                    ),
                  ),
                ],
              ],
            ),
            const SizedBox(height: 12),
            Container(
              alignment: Alignment.centerLeft,
              height: 6,
              decoration: BoxDecoration(
                color: Pallete.greyPriceBar,
                borderRadius: BorderRadius.circular(64),
              ),
              child: LayoutBuilder(
                builder: (BuildContext context, BoxConstraints constraints) =>
                    Container(
                      width:
                          constraints.maxWidth *
                          ((widget.tour.localPaid ?? 0) /
                              (widget.tour.localPrice ?? 0)),
                      height: 6,
                      decoration: BoxDecoration(
                        color: Pallete.blue,
                        borderRadius: BorderRadius.circular(64),
                      ),
                    ),
              ),
            ),
          ],
        )
      : const SizedBox();

  Widget dateWidget() => Text(
    formatDateRangeWithNightsText(
      widget.tour.tourStartDate,
      widget.tour.tourEndDate,
    ),
    style: AppTextStyles.s14w400.copyWith(color: Pallete.greyText888),
  );

  Widget peopleCount() => Container(
    padding: EdgeInsets.symmetric(vertical: 6, horizontal: 8),
    decoration: BoxDecoration(
      borderRadius: BorderRadius.circular(8),
      color: Pallete.bg,
    ),
    child: Wrap(
      alignment: WrapAlignment.center,
      children: [
        SizedBox(
          height: 16,
          width: 16,
          child: Center(child: SvgPicture.asset(Asset.svg.users)),
        ),
        const SizedBox(width: 8),
        Text(
          "${widget.tour.tourists?.adults ?? 0} взр., ${widget.tour.tourists?.children ?? 0} реб.",
          style: AppTextStyles.s12w400.copyWith(color: Pallete.blackText3d),
        ),
      ],
    ),
  );
}
