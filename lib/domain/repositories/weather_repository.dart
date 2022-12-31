import 'dart:convert';

import 'package:simple_weather/domain/models/weather_model.dart';

import '../../data/remote_data_sources/weather_remote_data_source.dart';

class WeatherRepository {
  WeatherRepository(this._weatherRemoteDataSource);
  final WeatherRemoteDataSource _weatherRemoteDataSource;

  Future<WeatherModel?> getWeatherModel({
    required String city,
  }) async {
    // http://api.weatherapi.com/v1/current.json?key=011d74bc9f6a4fb7b45235711222812&q=Katowice&aqi=no

    final json = await _weatherRemoteDataSource.getWeatherData(
      city: city,
    );

    if (json == null) {
      return null;
    }

    return WeatherModel.fromJson(json);
  }
}
