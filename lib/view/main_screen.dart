import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:seou_jiyeong_chul/view/station_info_widget.dart';
import 'package:seou_jiyeong_chul/viewmodel/main_view_model.dart';

class MainScreen extends StatefulWidget {
  final MainViewModel _mainViewModel;

  const MainScreen({
    super.key,
    required mainViewModel,
  }) : _mainViewModel = mainViewModel;

  @override
  State<MainScreen> createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  final _queryTextEditingController = TextEditingController();

  void updateUi() => setState(() {});

  @override
  void initState() {
    super.initState();
    widget._mainViewModel.addListener(updateUi);
  }

  @override
  void dispose() {
    _queryTextEditingController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
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
                    await widget._mainViewModel.searchStation(stationName);
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
                children: widget._mainViewModel.stationArrivalList
                    .map((e) => StationInfoWidget(stationArrival: e))
                    .toList()),
          ),
        ],
      ),
    );
  }
}
