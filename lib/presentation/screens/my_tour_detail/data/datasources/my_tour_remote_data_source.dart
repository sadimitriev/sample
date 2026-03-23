import 'package:dio/dio.dart' hide Headers;
import 'package:sample/presentation/screens/my_tour_detail/data/models/my_tour_model.dart';
import 'package:retrofit/retrofit.dart';

import 'my_tour_data_source.dart';

part 'my_tour_remote_data_source.g.dart';

@RestApi()
abstract class MyTourRemoteDataSource implements MyTourDataSource {
  factory MyTourRemoteDataSource(Dio dio) = _MyTourRemoteDataSource;

  @override
  @GET('/query/client-private-office/my-trips/trip')
  Future<MyTourModel> getTourById(
    @Query('sessionId') String sessionId,
    @Query('reservationId') int reservationId,
  );
}
