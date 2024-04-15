import 'package:flutter/material.dart';
import 'package:seou_jiyeong_chul/model/repository/station_arrival_repository.dart';

import '../model/model/station_arrival.dart';


class MainViewModel with ChangeNotifier {

  final StationArrivalRepository _stationArrivalRepository;
  List<StationArrival> _stationArrivalList = [];

  MainViewModel({
    required StationArrivalRepository stationArrivalRepository,
  }) : _stationArrivalRepository = stationArrivalRepository;


  List<StationArrival> get stationArrivalList =>
      List.unmodifiable(_stationArrivalList);

  void searchStation(String stationName) async {
    _stationArrivalList =
    await _stationArrivalRepository.getStationArrivalList(stationName);
    notifyListeners();
  }
}