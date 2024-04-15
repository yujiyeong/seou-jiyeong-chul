import 'package:freezed_annotation/freezed_annotation.dart';

part 'station_arrival.freezed.dart';

part 'station_arrival.g.dart';

@freezed
class StationArrival with _$StationArrival {
  const factory StationArrival({
    required String updnLine,
    required String trainLineNm,
    required String statnNm,
    required String btrainSttus,
    required String barvlDt,
    required String recptnDt,
    required String arvlMsg2,
    required String arvlMsg3,
  }) = _StationArrival;

  factory StationArrival.fromJson(Map<String, Object?> json) => _$StationArrivalFromJson(json);
}