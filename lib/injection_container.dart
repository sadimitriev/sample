import 'package:get_it/get_it.dart';
import 'package:sample/app/network/dio_client.dart';
import 'package:sample/app/security/secure_storage.dart';
import 'package:sample/presentation/screens/add_order/data/datasources/add_order_data_source.dart';
import 'package:sample/presentation/screens/add_order/data/datasources/add_order_remote_data_source.dart';
import 'package:sample/presentation/screens/add_order/data/repositories/add_old_order_repository_impl.dart';
import 'package:sample/presentation/screens/add_order/domain/repositories/add_order_repository.dart';
import 'package:sample/presentation/screens/add_order/domain/usecases/add_order_use_case.dart';
import 'package:sample/presentation/screens/add_order/presentation/blocs/new_event_cubit/add_order_cubit.dart';
import 'package:sample/presentation/screens/documents/data/datasources/tour_documents_data_source.dart';
import 'package:sample/presentation/screens/documents/data/datasources/tour_documents_remote_data_source.dart';
import 'package:sample/presentation/screens/documents/data/repositories/tour_documents_repository_impl.dart';
import 'package:sample/presentation/screens/documents/domain/repositories/tour_documents_repository.dart';
import 'package:sample/presentation/screens/documents/domain/usecases/get_documents_use_case.dart';
import 'package:sample/presentation/screens/documents/presentation/blocs/tour_documents_cubit/tour_documents_cubit.dart';
import 'package:sample/presentation/screens/finance_full_info/data/datasources/finance_full_info_data_source.dart';
import 'package:sample/presentation/screens/finance_full_info/data/datasources/finance_full_info_remote_data_source.dart';
import 'package:sample/presentation/screens/finance_full_info/data/repositories/finance_full_info_repository_impl.dart';
import 'package:sample/presentation/screens/finance_full_info/domain/repositories/finance_full_info_repository.dart';
import 'package:sample/presentation/screens/finance_full_info/domain/usecases/get_finance_full_info_use_case.dart';
import 'package:sample/presentation/screens/finance_full_info/presentation/blocs/finance_full_info_cubit/finance_full_info_cubit.dart';
import 'package:sample/presentation/screens/flights/data/datasources/tour_flights_data_source.dart';
import 'package:sample/presentation/screens/flights/data/datasources/tour_flights_remote_data_source.dart';
import 'package:sample/presentation/screens/flights/data/repositories/tour_flights_repository_impl.dart';
import 'package:sample/presentation/screens/flights/domain/repositories/tour_flights_repository.dart';
import 'package:sample/presentation/screens/flights/domain/usecases/get_tour_flights_use_case.dart';
import 'package:sample/presentation/screens/flights/presentation/blocs/tour_documents_cubit/tour_flights_cubit.dart';
import 'package:sample/presentation/screens/my_tour_detail/data/datasources/my_tour_data_source.dart';
import 'package:sample/presentation/screens/my_tour_detail/data/datasources/my_tour_remote_data_source.dart';
import 'package:sample/presentation/screens/my_tour_detail/data/repositories/my_tour_repository_impl.dart';
import 'package:sample/presentation/screens/my_tour_detail/domain/entities/my_tour.dart';
import 'package:sample/presentation/screens/my_tour_detail/domain/repositories/my_tour_repository.dart';
import 'package:sample/presentation/screens/my_tour_detail/domain/usecases/get_my_tour_id_use_case.dart';
import 'package:sample/presentation/screens/my_tour_detail/presentation/blocs/tour_detail_cubit/tour_detail_cubit.dart';

final sl = GetIt.instance;

Future<void> initDependencies() async {
  final SecureStorage secureStorage = SecureStorage();

  sl
    // External
    ..registerLazySingleton(() => DioClient.dio)
    ..registerLazySingleton(() => secureStorage)
    // Data source
    ..registerSingleton<MyTourDataSource>(MyTourRemoteDataSource(sl()))
    ..registerSingleton<AddOldOrderDataSource>(AddOldOrderRemoteDataSource(sl()))
    ..registerSingleton<TourDocumentsDataSource>(TourDocumentsRemoteDataSource(sl()))
    ..registerSingleton<TourFlightsDataSource>(TourFlightsRemoteDataSource(sl()))
    ..registerSingleton<FinanceFullInfoDataSource>(FinanceFullInfoRemoteDataSource(sl()))
    // Repository
    ..registerSingleton<MyTourRepository>(MyTourRepositoryImpl(sl()))
    ..registerSingleton<AddOrderRepository>(AddOrderRepositoryImpl(sl()))
    ..registerSingleton<TourDocumentsRepository>(TourDocumentsRepositoryImpl(sl()))
    ..registerSingleton<TourFlightsRepository>(TourFlightsRepositoryImpl(sl()))
    ..registerSingleton<FinanceFullInfoRepository>(FinanceFullInfoRepositoryImpl(sl()))
    // UseCases
    ..registerSingleton(GetMyTourByIdUseCase(sl(), sl()))
    ..registerSingleton(AddOrderUseCase(sl(), sl()))
    ..registerSingleton(GetTourDocumentsUseCase(sl(), sl()))
    ..registerSingleton(GetTourFlightsUseCase(sl(), sl()))
    ..registerSingleton(GetFinanceFullInfoUseCase(sl(), sl()))
    //BLoC
    ..registerLazySingleton(() => AddOrderCubit(sl()))
    ..registerFactoryParam<FinanceFullInfoCubit, MyTour, void>(
          (tour, _) => FinanceFullInfoCubit(sl(), tour: tour),
    )
    ..registerFactoryParam<TourFlightsCubit, MyTour, void>(
          (tour, _) => TourFlightsCubit(sl(), tour: tour),
    )
    ..registerFactoryParam<TourDetailCubit, MyTour, void>(
          (tour, _) => TourDetailCubit(sl(), tour: tour),
    )
    ..registerFactoryParam<TourDocumentsCubit, MyTour, void>(
          (tour, _) => TourDocumentsCubit(sl(), tour: tour),
    );
}
