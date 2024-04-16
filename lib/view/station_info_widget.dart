import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:seou_jiyeong_chul/model/model/station_arrival.dart';

class StationInfoWidget extends StatefulWidget {
  final StationArrival _stationArrival;

  const StationInfoWidget({
    super.key,
    required stationArrival,
  }) : _stationArrival = stationArrival;

  @override
  State<StationInfoWidget> createState() => _StationInfoWidgetState();
}

class _StationInfoWidgetState extends State<StationInfoWidget> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Card(
        child: SizedBox(
          width: 300,
          height: 100,
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16.0),
            child: SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    children: [
                      Text(widget._stationArrival.trainLineNm),
                      const SizedBox(
                        width: 24,
                      ),
                      Text(widget._stationArrival.btrainSttus),
                    ],
                  ),
                  Row(
                    // mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text('도착: ${widget._stationArrival.arvlMsg2}'),
                      const SizedBox(
                        width: 24,
                      ),
                      Text(widget._stationArrival.updnLine),
                      const SizedBox(
                        width: 24,
                      ),
                      Text('현재: ${widget._stationArrival.arvlMsg3}'),
                    ],
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
