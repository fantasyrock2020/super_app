import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import '../../../core/bloc/base_page_state.dart';
import '../../../core/extensions/extensions.dart';

import '../../../core/services/services.dart';
import 'bloc/home/weather_home_bloc.dart';
import 'widget/home/error.dart';
import 'widget/home/item.dart';
import 'widget/home/loading.dart';
import 'widget/home/slide_animation.dart';

class WeatherHomeScreen extends StatefulWidget {
  const WeatherHomeScreen({super.key});

  @override
  State<WeatherHomeScreen> createState() => _WeatherHomeScreenState();
}

class _WeatherHomeScreenState
    extends BasePageState<WeatherHomeScreen, WeatherHomeBloc> {
  final ILocationService _locationService = LocationService();
  DeviceLatLong? location;

  @override
  void initState() {
    super.initState();
    _onLoad();
  }

  Future<void> _onLoad() async {
    bloc.add(const UpdateLoadingStatusEvent(true));
    location ??= await _locationService.getCurrentLocation();
    bloc
      ..add(UpdateLocationEvent(location?.latitude, location?.longitude))
      ..add(const LoadDataEvent());
  }

  void _onRetry() {
    _onLoad();
  }

  @override
  Widget buildPage(BuildContext context) {
    return Scaffold(
      body: BlocBuilder<WeatherHomeBloc, WeatherHomeState>(
        builder: (context, state) {
          if (state.loading) {
            return const WeatherLoadingWidget();
          }
          if (state.currentWeather == null && state.forecasts.isEmpty) {
            return WeatherErrorWidget(onRetry: _onRetry);
          }
          return Column(
            children: [
              const SizedBox(height: 56),
              Text(
                '${state.currentWeather!.main.temp.kelvinToCelsius()}°',
                style: const TextStyle(
                  fontSize: 96,
                  color: Color(0xFF2A2A2A),
                  fontWeight: FontWeight.w900,
                  height: 1.2,
                ),
              ),
              Text(
                state.currentWeather!.name,
                style: const TextStyle(
                  fontSize: 36,
                  color: Color(0xFF556799),
                  fontWeight: FontWeight.w100,
                  height: 1.4,
                ),
              ),
              const SizedBox(height: 62),
              Expanded(
                child: SlideAnimationWidget(
                  child: Container(
                    padding: const EdgeInsets.only(top: 16),
                    decoration: BoxDecoration(
                      color: Colors.white,
                      boxShadow: [
                        BoxShadow(
                          color: Colors.black.withValues(alpha: .05),
                          blurRadius: 8,
                          spreadRadius: 2,
                          offset: const Offset(0, 4),
                        ),
                      ],
                    ),
                    child: ListView(
                      primary: false,
                      padding: const EdgeInsets.symmetric(horizontal: 16),
                      children: state.forecasts.map((e) {
                        return WeatherRow(forecast: e);
                      }).toList(),
                    ),
                  ),
                ),
              ),
            ],
          );
        },
      ),
    );
  }
}
