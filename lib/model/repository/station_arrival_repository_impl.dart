import 'package:seou_jiyeong_chul/model/data_source/station_arrival_data_source.dart';
import 'package:seou_jiyeong_chul/model/mapper/station_arrival_mapper.dart';
import 'package:seou_jiyeong_chul/model/model/station_arrival.dart';

import '../dto/station_arrival_dto.dart';
import 'station_arrival_repository.dart';

class StationArrivalRepositoryImpl implements StationArrivalRepository {
  final StationArrivalDataSource _stationArrivalDataSource;

  const StationArrivalRepositoryImpl({
    required StationArrivalDataSource stationArrivalDataSource,
  }) : _stationArrivalDataSource = stationArrivalDataSource;

  @override
  Future<List<StationArrival>> getStationArrivalList(String stationName) async {
    final StationArrivalInfoDto dto =
        await _stationArrivalDataSource.getStationArrivalResult(stationName);

    if (dto.realtimeArrivalList == null) {
      return [];
    }

    return dto.realtimeArrivalList!.map((e) => e.toStationArrival()).toList();
  }
}
