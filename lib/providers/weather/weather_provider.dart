import 'package:equatable/equatable.dart';
import 'package:open_weather/models/custom_error.dart';
import 'package:open_weather/models/weather.dart';
import 'package:open_weather/repositories/weather_repository.dart';
import 'package:state_notifier/state_notifier.dart';

part 'weather_state.dart';

class WeatherProvider extends StateNotifier<WeatherState> with LocatorMixin {
  WeatherProvider() : super(WeatherState.initial());

  Future<void> fetchWeather(String city) async {
    state = state.copyWith(status: WeatherStatus.loading);

    try {
      final Weather weather =
          await read<WeatherRepository>().fetchWeather(city);

      state = state.copyWith(
        status: WeatherStatus.loaded,
        weather: weather,
      );
    } on CustomError catch (e) {
      state = state.copyWith(status: WeatherStatus.error, error: e);
    }
  }
}
