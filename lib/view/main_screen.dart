import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:seou_jiyeong_chul/view/station_info_widget.dart';
import 'package:seou_jiyeong_chul/viewmodel/main_view_model.dart';

class MainScreen extends StatefulWidget {
  const MainScreen({
    super.key,
  });

  @override
  State<MainScreen> createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  final _queryTextEditingController = TextEditingController();

  @override
  void initState() {
    super.initState();
  }

  @override
  void dispose() {
    _queryTextEditingController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final model = context.watch<MainViewModel>();

    return Scaffold(
      appBar: AppBar(
        title: const Center(
          child: Text(
            '서우지영철',
            style: TextStyle(fontWeight: FontWeight.w600),
          ),
        ),
      ),
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(16.0),
            child: TextField(
              controller: _queryTextEditingController,
              decoration: InputDecoration(
                border: const OutlineInputBorder(),
                hintText: '역 이름 입력',
                suffixIcon: IconButton(
                  icon: const Icon(Icons.search),
                  onPressed: () async {
                    final stationName = _queryTextEditingController.text;
                    model.searchStation(stationName);
                  },
                ),
              ),
            ),
          ),
          _queryTextEditingController.text == ""
              ? const Text("")
              : Text(
                  '${_queryTextEditingController.text}역 검색 결과',
                  style: const TextStyle(fontSize: 17),
                ),
          Expanded(
            child: ListView(
                children: model.stationArrivalList
                    .map((e) => StationInfoWidget(stationArrival: e))
                    .toList()),
          ),
        ],
      ),
    );
  }
}
