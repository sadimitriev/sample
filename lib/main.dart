import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:sample/app/network/dio_client.dart';
import 'package:sample/app/network/services/connectivity_service.dart';
import 'package:sample/injection_container.dart';

import 'app.dart';
import 'app/bloc/app_bloc_observer.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  Bloc.observer = AppBlocObserver();
  await DioClient.init();

  await initDependencies();
  await ConnectivityService().init();
  runApp(App(key: UniqueKey()));
}
