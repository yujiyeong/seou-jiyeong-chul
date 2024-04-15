import 'package:flutter/material.dart';
import 'package:seou_jiyeong_chul/model/repository/station_arrival_repository.dart';


class MainViewModel with ChangeNotifier {

  final StationArrivalRepository _stationArrivalRepository;

  MainViewModel({
    required StationArrivalRepository stationArrivalRepository,
  }) : _stationArrivalRepository = stationArrivalRepository;

}