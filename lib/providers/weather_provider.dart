import 'package:flutter/material.dart';
import 'package:app2_weather/models/weather.dart';
import 'package:app2_weather/repositories/api_repository.dart';

class WeatherProvider extends ChangeNotifier {
  Future<WeatherData> getWeatherCurrent() async {
    WeatherData result = await ApiRepository.callApiGetWeather();
    return result;
  }
}
