import 'package:flutter/services.dart';
import 'package:sample/app/bloc/authentication_bloc.dart';
import 'package:sample/app/constants/environment.dart';
import 'package:sample/app/navigation/router/router.dart';
import 'package:sample/app/network/dio_client.dart';
import 'package:sample/app/package_import_lists/view_import_list.dart';
import 'package:sample/others/my_travels_repository/src/my_travels_repository.dart';

import 'others/auth_repository/auth_repository.dart';
import 'others/lims_mobile_api_client/lims_mobile_api_client.dart';

class App extends StatelessWidget {
  const App({super.key});

  @override
  Widget build(BuildContext context) {
    var limsApi = LimsMobileApiClient(dio: DioClient.dio);
    return MultiRepositoryProvider(
      providers: [
        RepositoryProvider(
          create: (_) =>
              AuthRepository(dio: DioClient.dio, limsMobileApiClient: limsApi),
          dispose: (repository) => repository.dispose(),
        ),
        RepositoryProvider(
          create: (_) => MyTravelsRepository(
            dio: DioClient.dio,
            limsMobileApiClient: limsApi,
          ),
        ),
      ],
      child: MultiBlocProvider(
        providers: [
          BlocProvider(
            lazy: false,
            create: (context) =>
                AuthenticationBloc(
                    authRepository: context.read<AuthRepository>(),
                    allowedUserInactivityTimeInMinutes:
                        EnvironmentConst.allowedUserInactivityTimeInMinutes,
                  )
                  ..add(AuthenticationEvent.subscriptionRequested())
                  ..add(AuthenticationEvent.newSessionStart()),
          ),
        ],
        child: AppView(),
      ),
    );
  }
}

class AppView extends StatelessWidget {
  AppView({super.key});

  final _appRouter = AppRouter();

  @override
  Widget build(BuildContext context) => MaterialApp.router(
    scaffoldMessengerKey: UIHelpers.rootScaffoldMessengerKey,
    theme: ThemeData(
      scaffoldBackgroundColor: Colors.white,
      fontFamily: "OpenSans",
      colorScheme: ThemeData().colorScheme.copyWith(
        surfaceContainer: Colors.black,
        surface: Colors.black,
        brightness: Brightness.light,
        onSurface: Colors.grey,
      ),
      appBarTheme: AppBarTheme(
        elevation: 0,
        centerTitle: true,
        backgroundColor: Colors.white,
      ),
      textSelectionTheme: TextSelectionThemeData(
        selectionHandleColor: Pallete.bottomBarIconActive,
        selectionColor: Pallete.bottomBarIconActive.withValues(alpha: 0.3),
      ),
    ),
    localizationsDelegates: S.localizationDelegates,
    supportedLocales: S.supportedLocales,
    debugShowCheckedModeBanner: false,
    routerConfig: _appRouter.config(),
    builder: (context, child) {
      return Overlay(
        initialEntries: [
          OverlayEntry(
            builder: (context) {
              return MediaQuery(
                data: MediaQuery.of(
                  context,
                ).copyWith(textScaler: TextScaler.linear(1)),
                child: AnnotatedRegion<SystemUiOverlayStyle>(
                  value: const SystemUiOverlayStyle(
                    statusBarColor: Colors.black,
                    statusBarIconBrightness: Brightness.light,
                    systemNavigationBarIconBrightness: Brightness.light,
                  ),
                  child: BlocListener<AuthenticationBloc, AuthenticationState>(
                    listener: (listenerContext, state) {
                      state.when(
                        unknown: () => {},
                        unauthenticated: () {
                        },
                        authenticated: () {
                        },
                      );
                    },
                    child: child,
                  ),
                ),
              );
            },
          ),
        ],
      );
    },
  );
}
