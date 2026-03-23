import 'package:sample/presentation/screens/my_tour_detail/data/models/my_tour_model.dart';

abstract class MyTourDataSource {
  Future<MyTourModel> getTourById(String sessionId, int reservationId);
}
