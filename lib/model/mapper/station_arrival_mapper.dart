import 'package:seou_jiyeong_chul/model/model/station_arrival.dart';

import '../dto/station_arrival_dto.dart';

extension ToStationArrival on RealtimeArrivalDto {
  StationArrival toStationArrival() {
    return StationArrival(
      updnLine: updnLine ?? '',
      trainLineNm: trainLineNm ?? '',
      statnNm: statnNm ?? '',
      btrainSttus: btrainSttus ?? '',
      barvlDt: barvlDt ?? '',
      recptnDt: recptnDt ?? '',
      arvlMsg2: arvlMsg2 ?? '',
      arvlMsg3: arvlMsg3 ?? '',
    );
  }
}
