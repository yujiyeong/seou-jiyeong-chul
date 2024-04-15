import 'dart:convert';

import '../dto/station_arrival_dto.dart';

import 'package:http/http.dart' as http;

class StationArrivalDataSource {
  final String _baseUrl = 'http://swopenapi.seoul.go.kr/api/subway/sample/json/realtimeStationArrival/0/5/';
  final http.Client _client;

  const StationArrivalDataSource({
    required http.Client client,
  }) : _client = client;

  Future<StationArrivalDto> getStationArrivalResult(String stationName) async {
    final http.Response response =
        await _client.get(Uri.parse('$_baseUrl$stationName'));

    Map<String, dynamic> decodedJson = response.statusCode == 200
        ? jsonDecode(utf8.decode(response.bodyBytes))
        : throw Exception(
            'Request failed with status: ${response.statusCode}.');

    return StationArrivalDto.fromJson(decodedJson);
  }
}
