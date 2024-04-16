import 'package:go_router/go_router.dart';
import 'package:http/http.dart' as http;
import 'package:provider/provider.dart';
import 'package:seou_jiyeong_chul/view/main_screen.dart';

import 'model/data_source/station_arrival_data_source.dart';
import 'model/repository/station_arrival_repository_impl.dart';
import 'viewmodel/main_view_model.dart';

final router = GoRouter(
  initialLocation: '/home',
  routes: [
    GoRoute(
      path: '/home',
      builder: (context, state) {
        return ChangeNotifierProvider(
          create: (_) => MainViewModel(
            stationArrivalRepository: StationArrivalRepositoryImpl(
              stationArrivalDataSource: StationArrivalDataSource(
                client: http.Client(),
              ),
            ),
          ),
          child: const MainScreen(),
        );
      },
    ),
  ],
);
