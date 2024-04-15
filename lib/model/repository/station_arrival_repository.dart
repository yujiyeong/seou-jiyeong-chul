import 'package:seou_jiyeong_chul/model/model/station_arrival.dart';

abstract interface class StationArrivalRepository {
  Future<List<StationArrival>> getStationArrivalList(String stationName);
}
