// dart format width=80
// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// AutoRouterGenerator
// **************************************************************************

// ignore_for_file: type=lint
// coverage:ignore-file

part of 'router.dart';

/// generated route for
/// [AddOrderPage]
class AddOrderRoute extends PageRouteInfo<void> {
  const AddOrderRoute({List<PageRouteInfo>? children})
    : super(AddOrderRoute.name, initialChildren: children);

  static const String name = 'AddOrderRoute';

  static PageInfo page = PageInfo(
    name,
    builder: (data) {
      return WrappedRoute(child: const AddOrderPage());
    },
  );
}

/// generated route for
/// [BuyerPage]
class BuyerRoute extends PageRouteInfo<BuyerRouteArgs> {
  BuyerRoute({Key? key, Customer? customer, List<PageRouteInfo>? children})
    : super(
        BuyerRoute.name,
        args: BuyerRouteArgs(key: key, customer: customer),
        initialChildren: children,
      );

  static const String name = 'BuyerRoute';

  static PageInfo page = PageInfo(
    name,
    builder: (data) {
      final args = data.argsAs<BuyerRouteArgs>(
        orElse: () => const BuyerRouteArgs(),
      );
      return BuyerPage(key: args.key, customer: args.customer);
    },
  );
}

class BuyerRouteArgs {
  const BuyerRouteArgs({this.key, this.customer});

  final Key? key;

  final Customer? customer;

  @override
  String toString() {
    return 'BuyerRouteArgs{key: $key, customer: $customer}';
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;
    if (other is! BuyerRouteArgs) return false;
    return key == other.key && customer == other.customer;
  }

  @override
  int get hashCode => key.hashCode ^ customer.hashCode;
}

/// generated route for
/// [CodeScreen]
class CodeRoute extends PageRouteInfo<CodeRouteArgs> {
  CodeRoute({
    Key? key,
    CodeType type = CodeType.four,
    List<PageRouteInfo>? children,
  }) : super(
         CodeRoute.name,
         args: CodeRouteArgs(key: key, type: type),
         initialChildren: children,
       );

  static const String name = 'CodeRoute';

  static PageInfo page = PageInfo(
    name,
    builder: (data) {
      final args = data.argsAs<CodeRouteArgs>(
        orElse: () => const CodeRouteArgs(),
      );
      return WrappedRoute(
        child: CodeScreen(key: args.key, type: args.type),
      );
    },
  );
}

class CodeRouteArgs {
  const CodeRouteArgs({this.key, this.type = CodeType.four});

  final Key? key;

  final CodeType type;

  @override
  String toString() {
    return 'CodeRouteArgs{key: $key, type: $type}';
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;
    if (other is! CodeRouteArgs) return false;
    return key == other.key && type == other.type;
  }

  @override
  int get hashCode => key.hashCode ^ type.hashCode;
}

/// generated route for
/// [ConditionsPage]
class ConditionsRoute extends PageRouteInfo<void> {
  const ConditionsRoute({List<PageRouteInfo>? children})
    : super(ConditionsRoute.name, initialChildren: children);

  static const String name = 'ConditionsRoute';

  static PageInfo page = PageInfo(
    name,
    builder: (data) {
      return const ConditionsPage();
    },
  );
}

/// generated route for
/// [DocumentsPage]
class DocumentsRoute extends PageRouteInfo<DocumentsRouteArgs> {
  DocumentsRoute({
    Key? key,
    required MyTour tour,
    List<PageRouteInfo>? children,
  }) : super(
         DocumentsRoute.name,
         args: DocumentsRouteArgs(key: key, tour: tour),
         initialChildren: children,
       );

  static const String name = 'DocumentsRoute';

  static PageInfo page = PageInfo(
    name,
    builder: (data) {
      final args = data.argsAs<DocumentsRouteArgs>();
      return WrappedRoute(
        child: DocumentsPage(key: args.key, tour: args.tour),
      );
    },
  );
}

class DocumentsRouteArgs {
  const DocumentsRouteArgs({this.key, required this.tour});

  final Key? key;

  final MyTour tour;

  @override
  String toString() {
    return 'DocumentsRouteArgs{key: $key, tour: $tour}';
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;
    if (other is! DocumentsRouteArgs) return false;
    return key == other.key && tour == other.tour;
  }

  @override
  int get hashCode => key.hashCode ^ tour.hashCode;
}

/// generated route for
/// [ExcursionsPage]
class ExcursionsRoute extends PageRouteInfo<ExcursionsRouteArgs> {
  ExcursionsRoute({
    Key? key,
    List<Transfer>? transfers,
    List<PageRouteInfo>? children,
  }) : super(
         ExcursionsRoute.name,
         args: ExcursionsRouteArgs(key: key, transfers: transfers),
         initialChildren: children,
       );

  static const String name = 'ExcursionsRoute';

  static PageInfo page = PageInfo(
    name,
    builder: (data) {
      final args = data.argsAs<ExcursionsRouteArgs>(
        orElse: () => const ExcursionsRouteArgs(),
      );
      return ExcursionsPage(key: args.key, transfers: args.transfers);
    },
  );
}

class ExcursionsRouteArgs {
  const ExcursionsRouteArgs({this.key, this.transfers});

  final Key? key;

  final List<Transfer>? transfers;

  @override
  String toString() {
    return 'ExcursionsRouteArgs{key: $key, transfers: $transfers}';
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;
    if (other is! ExcursionsRouteArgs) return false;
    return key == other.key &&
        const ListEquality<Transfer>().equals(transfers, other.transfers);
  }

  @override
  int get hashCode =>
      key.hashCode ^ const ListEquality<Transfer>().hash(transfers);
}

/// generated route for
/// [FinanceFullInfoPage]
class FinanceFullInfoRoute extends PageRouteInfo<FinanceFullInfoRouteArgs> {
  FinanceFullInfoRoute({
    Key? key,
    required MyTour tour,
    List<PageRouteInfo>? children,
  }) : super(
         FinanceFullInfoRoute.name,
         args: FinanceFullInfoRouteArgs(key: key, tour: tour),
         initialChildren: children,
       );

  static const String name = 'FinanceFullInfoRoute';

  static PageInfo page = PageInfo(
    name,
    builder: (data) {
      final args = data.argsAs<FinanceFullInfoRouteArgs>();
      return WrappedRoute(
        child: FinanceFullInfoPage(key: args.key, tour: args.tour),
      );
    },
  );
}

class FinanceFullInfoRouteArgs {
  const FinanceFullInfoRouteArgs({this.key, required this.tour});

  final Key? key;

  final MyTour tour;

  @override
  String toString() {
    return 'FinanceFullInfoRouteArgs{key: $key, tour: $tour}';
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;
    if (other is! FinanceFullInfoRouteArgs) return false;
    return key == other.key && tour == other.tour;
  }

  @override
  int get hashCode => key.hashCode ^ tour.hashCode;
}

/// generated route for
/// [FlightsPage]
class FlightsRoute extends PageRouteInfo<FlightsRouteArgs> {
  FlightsRoute({Key? key, required MyTour tour, List<PageRouteInfo>? children})
    : super(
        FlightsRoute.name,
        args: FlightsRouteArgs(key: key, tour: tour),
        initialChildren: children,
      );

  static const String name = 'FlightsRoute';

  static PageInfo page = PageInfo(
    name,
    builder: (data) {
      final args = data.argsAs<FlightsRouteArgs>();
      return WrappedRoute(
        child: FlightsPage(key: args.key, tour: args.tour),
      );
    },
  );
}

class FlightsRouteArgs {
  const FlightsRouteArgs({this.key, required this.tour});

  final Key? key;

  final MyTour tour;

  @override
  String toString() {
    return 'FlightsRouteArgs{key: $key, tour: $tour}';
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;
    if (other is! FlightsRouteArgs) return false;
    return key == other.key && tour == other.tour;
  }

  @override
  int get hashCode => key.hashCode ^ tour.hashCode;
}

/// generated route for
/// [GisInfoPage]
class GisInfoRoute extends PageRouteInfo<GisInfoRouteArgs> {
  GisInfoRoute({Key? key, GisInfo? info, List<PageRouteInfo>? children})
    : super(
        GisInfoRoute.name,
        args: GisInfoRouteArgs(key: key, info: info),
        initialChildren: children,
      );

  static const String name = 'GisInfoRoute';

  static PageInfo page = PageInfo(
    name,
    builder: (data) {
      final args = data.argsAs<GisInfoRouteArgs>(
        orElse: () => const GisInfoRouteArgs(),
      );
      return GisInfoPage(key: args.key, info: args.info);
    },
  );
}

class GisInfoRouteArgs {
  const GisInfoRouteArgs({this.key, this.info});

  final Key? key;

  final GisInfo? info;

  @override
  String toString() {
    return 'GisInfoRouteArgs{key: $key, info: $info}';
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;
    if (other is! GisInfoRouteArgs) return false;
    return key == other.key && info == other.info;
  }

  @override
  int get hashCode => key.hashCode ^ info.hashCode;
}

/// generated route for
/// [HomePage]
class HomeRoute extends PageRouteInfo<HomeRouteArgs> {
  HomeRoute({Key? key, Navigation? initPage, List<PageRouteInfo>? children})
    : super(
        HomeRoute.name,
        args: HomeRouteArgs(key: key, initPage: initPage),
        initialChildren: children,
      );

  static const String name = 'HomeRoute';

  static PageInfo page = PageInfo(
    name,
    builder: (data) {
      final args = data.argsAs<HomeRouteArgs>(
        orElse: () => const HomeRouteArgs(),
      );
      return HomePage(key: args.key, initPage: args.initPage);
    },
  );
}

class HomeRouteArgs {
  const HomeRouteArgs({this.key, this.initPage});

  final Key? key;

  final Navigation? initPage;

  @override
  String toString() {
    return 'HomeRouteArgs{key: $key, initPage: $initPage}';
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;
    if (other is! HomeRouteArgs) return false;
    return key == other.key && initPage == other.initPage;
  }

  @override
  int get hashCode => key.hashCode ^ initPage.hashCode;
}

/// generated route for
/// [InsurancePage]
class InsuranceRoute extends PageRouteInfo<InsuranceRouteArgs> {
  InsuranceRoute({
    Key? key,
    List<Transfer>? transfers,
    List<PageRouteInfo>? children,
  }) : super(
         InsuranceRoute.name,
         args: InsuranceRouteArgs(key: key, transfers: transfers),
         initialChildren: children,
       );

  static const String name = 'InsuranceRoute';

  static PageInfo page = PageInfo(
    name,
    builder: (data) {
      final args = data.argsAs<InsuranceRouteArgs>(
        orElse: () => const InsuranceRouteArgs(),
      );
      return InsurancePage(key: args.key, transfers: args.transfers);
    },
  );
}

class InsuranceRouteArgs {
  const InsuranceRouteArgs({this.key, this.transfers});

  final Key? key;

  final List<Transfer>? transfers;

  @override
  String toString() {
    return 'InsuranceRouteArgs{key: $key, transfers: $transfers}';
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;
    if (other is! InsuranceRouteArgs) return false;
    return key == other.key &&
        const ListEquality<Transfer>().equals(transfers, other.transfers);
  }

  @override
  int get hashCode =>
      key.hashCode ^ const ListEquality<Transfer>().hash(transfers);
}

/// generated route for
/// [LoginScreen]
class LoginRoute extends PageRouteInfo<void> {
  const LoginRoute({List<PageRouteInfo>? children})
    : super(LoginRoute.name, initialChildren: children);

  static const String name = 'LoginRoute';

  static PageInfo page = PageInfo(
    name,
    builder: (data) {
      return WrappedRoute(child: const LoginScreen());
    },
  );
}

/// generated route for
/// [MyArchiveScreen]
class MyArchiveRoute extends PageRouteInfo<void> {
  const MyArchiveRoute({List<PageRouteInfo>? children})
    : super(MyArchiveRoute.name, initialChildren: children);

  static const String name = 'MyArchiveRoute';

  static PageInfo page = PageInfo(
    name,
    builder: (data) {
      return const MyArchiveScreen();
    },
  );
}

/// generated route for
/// [MyTourDetailPage]
class MyTourDetailRoute extends PageRouteInfo<MyTourDetailRouteArgs> {
  MyTourDetailRoute({
    Key? key,
    required MyTravel tour,
    List<PageRouteInfo>? children,
  }) : super(
         MyTourDetailRoute.name,
         args: MyTourDetailRouteArgs(key: key, tour: tour),
         initialChildren: children,
       );

  static const String name = 'MyTourDetailRoute';

  static PageInfo page = PageInfo(
    name,
    builder: (data) {
      final args = data.argsAs<MyTourDetailRouteArgs>();
      return WrappedRoute(
        child: MyTourDetailPage(key: args.key, tour: args.tour),
      );
    },
  );
}

class MyTourDetailRouteArgs {
  const MyTourDetailRouteArgs({this.key, required this.tour});

  final Key? key;

  final MyTravel tour;

  @override
  String toString() {
    return 'MyTourDetailRouteArgs{key: $key, tour: $tour}';
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;
    if (other is! MyTourDetailRouteArgs) return false;
    return key == other.key && tour == other.tour;
  }

  @override
  int get hashCode => key.hashCode ^ tour.hashCode;
}

/// generated route for
/// [NewPasswordScreen]
class NewPasswordRoute extends PageRouteInfo<void> {
  const NewPasswordRoute({List<PageRouteInfo>? children})
    : super(NewPasswordRoute.name, initialChildren: children);

  static const String name = 'NewPasswordRoute';

  static PageInfo page = PageInfo(
    name,
    builder: (data) {
      return WrappedRoute(child: const NewPasswordScreen());
    },
  );
}

/// generated route for
/// [NotificationScreen]
class NotificationRoute extends PageRouteInfo<void> {
  const NotificationRoute({List<PageRouteInfo>? children})
    : super(NotificationRoute.name, initialChildren: children);

  static const String name = 'NotificationRoute';

  static PageInfo page = PageInfo(
    name,
    builder: (data) {
      return const NotificationScreen();
    },
  );
}

/// generated route for
/// [OnboardingScreen]
class OnboardingRoute extends PageRouteInfo<void> {
  const OnboardingRoute({List<PageRouteInfo>? children})
    : super(OnboardingRoute.name, initialChildren: children);

  static const String name = 'OnboardingRoute';

  static PageInfo page = PageInfo(
    name,
    builder: (data) {
      return const OnboardingScreen();
    },
  );
}

/// generated route for
/// [OrderNotFoundPage]
class OrderNotFoundRoute extends PageRouteInfo<void> {
  const OrderNotFoundRoute({List<PageRouteInfo>? children})
    : super(OrderNotFoundRoute.name, initialChildren: children);

  static const String name = 'OrderNotFoundRoute';

  static PageInfo page = PageInfo(
    name,
    builder: (data) {
      return const OrderNotFoundPage();
    },
  );
}

/// generated route for
/// [OtherServicesPage]
class OtherServicesRoute extends PageRouteInfo<OtherServicesRouteArgs> {
  OtherServicesRoute({
    Key? key,
    List<OtherServices>? services,
    List<PageRouteInfo>? children,
  }) : super(
         OtherServicesRoute.name,
         args: OtherServicesRouteArgs(key: key, services: services),
         initialChildren: children,
       );

  static const String name = 'OtherServicesRoute';

  static PageInfo page = PageInfo(
    name,
    builder: (data) {
      final args = data.argsAs<OtherServicesRouteArgs>(
        orElse: () => const OtherServicesRouteArgs(),
      );
      return OtherServicesPage(key: args.key, services: args.services);
    },
  );
}

class OtherServicesRouteArgs {
  const OtherServicesRouteArgs({this.key, this.services});

  final Key? key;

  final List<OtherServices>? services;

  @override
  String toString() {
    return 'OtherServicesRouteArgs{key: $key, services: $services}';
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;
    if (other is! OtherServicesRouteArgs) return false;
    return key == other.key &&
        const ListEquality<OtherServices>().equals(services, other.services);
  }

  @override
  int get hashCode =>
      key.hashCode ^ const ListEquality<OtherServices>().hash(services);
}

/// generated route for
/// [PasswordScreen]
class PasswordRoute extends PageRouteInfo<void> {
  const PasswordRoute({List<PageRouteInfo>? children})
    : super(PasswordRoute.name, initialChildren: children);

  static const String name = 'PasswordRoute';

  static PageInfo page = PageInfo(
    name,
    builder: (data) {
      return WrappedRoute(child: const PasswordScreen());
    },
  );
}

/// generated route for
/// [RecoveryScreen]
class RecoveryRoute extends PageRouteInfo<void> {
  const RecoveryRoute({List<PageRouteInfo>? children})
    : super(RecoveryRoute.name, initialChildren: children);

  static const String name = 'RecoveryRoute';

  static PageInfo page = PageInfo(
    name,
    builder: (data) {
      return WrappedRoute(child: const RecoveryScreen());
    },
  );
}

/// generated route for
/// [TransferPage]
class TransferRoute extends PageRouteInfo<TransferRouteArgs> {
  TransferRoute({
    Key? key,
    List<Transfer>? transfers,
    List<PageRouteInfo>? children,
  }) : super(
         TransferRoute.name,
         args: TransferRouteArgs(key: key, transfers: transfers),
         initialChildren: children,
       );

  static const String name = 'TransferRoute';

  static PageInfo page = PageInfo(
    name,
    builder: (data) {
      final args = data.argsAs<TransferRouteArgs>(
        orElse: () => const TransferRouteArgs(),
      );
      return TransferPage(key: args.key, transfers: args.transfers);
    },
  );
}

class TransferRouteArgs {
  const TransferRouteArgs({this.key, this.transfers});

  final Key? key;

  final List<Transfer>? transfers;

  @override
  String toString() {
    return 'TransferRouteArgs{key: $key, transfers: $transfers}';
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;
    if (other is! TransferRouteArgs) return false;
    return key == other.key &&
        const ListEquality<Transfer>().equals(transfers, other.transfers);
  }

  @override
  int get hashCode =>
      key.hashCode ^ const ListEquality<Transfer>().hash(transfers);
}

/// generated route for
/// [WelcomePage]
class WelcomeRoute extends PageRouteInfo<void> {
  const WelcomeRoute({List<PageRouteInfo>? children})
    : super(WelcomeRoute.name, initialChildren: children);

  static const String name = 'WelcomeRoute';

  static PageInfo page = PageInfo(
    name,
    builder: (data) {
      return const WelcomePage();
    },
  );
}
