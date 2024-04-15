// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'station_arrival.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$StationArrivalImpl _$$StationArrivalImplFromJson(Map<String, dynamic> json) =>
    _$StationArrivalImpl(
      updnLine: json['updnLine'] as String,
      trainLineNm: json['trainLineNm'] as String,
      statnNm: json['statnNm'] as String,
      btrainSttus: json['btrainSttus'] as String,
      barvlDt: json['barvlDt'] as String,
      recptnDt: json['recptnDt'] as String,
      arvlMsg2: json['arvlMsg2'] as String,
      arvlMsg3: json['arvlMsg3'] as String,
    );

Map<String, dynamic> _$$StationArrivalImplToJson(
        _$StationArrivalImpl instance) =>
    <String, dynamic>{
      'updnLine': instance.updnLine,
      'trainLineNm': instance.trainLineNm,
      'statnNm': instance.statnNm,
      'btrainSttus': instance.btrainSttus,
      'barvlDt': instance.barvlDt,
      'recptnDt': instance.recptnDt,
      'arvlMsg2': instance.arvlMsg2,
      'arvlMsg3': instance.arvlMsg3,
    };
