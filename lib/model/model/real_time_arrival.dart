import 'package:freezed_annotation/freezed_annotation.dart';

part 'real_time_arrival.freezed.dart';

part 'real_time_arrival.g.dart';

@freezed
class RealTimeArrival with _$RealTimeArrival {
  const factory RealTimeArrival({
    required String updnLine,
    required String trainLineNm,
    required String statnNm,
    required String btrainSttus,
    required String barvlDt,
    required String recptnDt,
    required String arvlMsg2,
    required String arvlMsg3,
  }) = _RealTimeArrival;

  factory RealTimeArrival.fromJson(Map<String, Object?> json) =>
      _$RealTimeArrivalFromJson(json);
}
