import 'package:collection/collection.dart';
import 'package:sample/app/package_import_lists/view_import_list.dart';
import 'package:sample/presentation/screens/add_order/presentation/pages/add_order.dart';
import 'package:sample/presentation/screens/buyer_page.dart';
import 'package:sample/presentation/screens/code/widgets/welcome.dart';
import 'package:sample/presentation/screens/conditions.dart';
import 'package:sample/presentation/screens/documents/presentation/pages/tour_documents.dart';
import 'package:sample/presentation/screens/excursions/excursions_page.dart';
import 'package:sample/presentation/screens/finance_full_info/presentation/pages/finance_full_info.dart';
import 'package:sample/presentation/screens/flights/presentation/pages/flights_page.dart';
import 'package:sample/presentation/screens/gis_page.dart';
import 'package:sample/presentation/screens/home/blocs/bottom_navigation/bottom_navigation_cubit.dart';
import 'package:sample/presentation/screens/home/home_screen.dart';
import 'package:sample/presentation/screens/insurance_page.dart';
import 'package:sample/presentation/screens/my_archive/my_archive_screen.dart';
import 'package:sample/presentation/screens/my_tour_detail/domain/entities/customer.dart';
import 'package:sample/presentation/screens/my_tour_detail/domain/entities/gis_info.dart';
import 'package:sample/presentation/screens/my_tour_detail/domain/entities/my_tour.dart';
import 'package:sample/presentation/screens/my_tour_detail/domain/entities/other_services.dart';
import 'package:sample/presentation/screens/my_tour_detail/domain/entities/transfer.dart';
import 'package:sample/presentation/screens/my_tour_detail/presentation/pages/my_tour_detail.dart';
import 'package:sample/presentation/screens/order_not_found.dart';
import 'package:sample/presentation/screens/other_services.dart';
import 'package:sample/presentation/screens/recovery/recovery_screen.dart';
import 'package:sample/presentation/screens/code/code_screen.dart';
import 'package:sample/presentation/screens/login/login_screen.dart';
import 'package:sample/presentation/screens/new_password_screen/new_password_screen.dart';
import 'package:sample/presentation/screens/password/password_screen.dart';
import 'package:sample/presentation/screens/notification_screen.dart';
import 'package:sample/presentation/screens/onboarding/onboarding_page.dart';
import 'package:sample/others/my_travels_repository/src/models/my_travel.dart';
import 'package:sample/presentation/screens/transfer/transfer_page.dart';

part 'router.gr.dart';

Route<T> modalSheetBuilder<T>(
    BuildContext context,
    Widget child,
    AutoRoutePage<T> page,
    ) {
  return ModalBottomSheetRoute(
    settings: page,
    builder: (context) => Container(
      padding: EdgeInsets.symmetric(horizontal: 16),
      constraints: BoxConstraints(
        maxHeight: MediaQuery.of(context).size.height * 0.9,
      ),
      child: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              child,
            ],
          ),
        ),
      ),
    ),
    isScrollControlled: true,
  );
}

@AutoRouterConfig()
class AppRouter extends RootStackRouter {
  @override
  RouteType get defaultRouteType => RouteType.material();

  @override
  List<AutoRoute> get routes => [
    AutoRoute(
      page: NotificationRoute.page,
      path: '/notification',
    ),
    AutoRoute(
      page: WelcomeRoute.page,
      path: '/welcome',
    ),
    AutoRoute(
      page: LoginRoute.page,
      path: '/login',
    ),
    AutoRoute(
      page: CodeRoute.page,
      path: '/code',
    ),
    AutoRoute(
      page: RecoveryRoute.page,
      path: '/recovery',
    ),
    AutoRoute(
      page: PasswordRoute.page,
      path: '/password',
    ),
    AutoRoute(
      page: NewPasswordRoute.page,
      path: '/newpassword',
    ),
    AutoRoute(
      page: HomeRoute.page,
      path: '/home',
    ),
    AutoRoute(
      page: MyArchiveRoute.page,
      path: '/my_archive',
    ),
    AutoRoute(
      page: MyTourDetailRoute.page,
      path: '/my_tour_detail',
    ),
    AutoRoute(
      initial: true,
      page: OnboardingRoute.page,
      path: '/',
    ),
    AutoRoute(
      page: OrderNotFoundRoute.page,
      path: '/orderNotFoundRoute',
    ),
    AutoRoute(
      page: DocumentsRoute.page,
      path: '/documentsRoute',
    ),
    AutoRoute(
      page: FlightsRoute.page,
      path: '/flightsRoute',
    ),
    AutoRoute(
      page: FinanceFullInfoRoute.page,
      path: '/financeFullInfoRoute',
    ),
    CustomRoute(
      customRouteBuilder: modalSheetBuilder,
      path: '/addOrderRoute',
      page: AddOrderRoute.page,
    ),
    CustomRoute(
      customRouteBuilder: modalSheetBuilder,
      path: '/transfer',
      page: TransferRoute.page,
    ),
    CustomRoute(
      customRouteBuilder: modalSheetBuilder,
      path: '/otherServicesRoute',
      page: OtherServicesRoute.page,
    ),
    CustomRoute(
      customRouteBuilder: modalSheetBuilder,
      path: '/conditionsRoute',
      page: ConditionsRoute.page,
    ),
    CustomRoute(
      customRouteBuilder: modalSheetBuilder,
      path: '/excursionsRoute',
      page: ExcursionsRoute.page,
    ),
    CustomRoute(
      customRouteBuilder: modalSheetBuilder,
      path: '/insuranceRoute',
      page: InsuranceRoute.page,
    ),
    CustomRoute(
      customRouteBuilder: modalSheetBuilder,
      path: '/buyerRoute',
      page: BuyerRoute.page,
    ),
    CustomRoute(
      customRouteBuilder: modalSheetBuilder,
      path: '/gisInfoRoute',
      page: GisInfoRoute.page,
    ),
  ];
}
