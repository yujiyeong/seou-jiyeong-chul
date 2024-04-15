import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'package:seou_jiyeong_chul/model/data_source/station_arrival_data_source.dart';
import 'package:seou_jiyeong_chul/model/repository/station_arrival_repository_impl.dart';
import 'package:seou_jiyeong_chul/view/main_screen.dart';

import '../viewmodel/main_view_model.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: MainScreen(
        mainViewModel: MainViewModel(
          stationArrivalRepository: StationArrivalRepositoryImpl(
            stationArrivalDataSource: StationArrivalDataSource(
              client: http.Client(),
            ),
          ),
        ),
      ),
    );
  }
}
