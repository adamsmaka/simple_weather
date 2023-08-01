import 'package:dio/dio.dart';

import 'package:simple_weather/domain/models/weather_model.dart';

class WeatherRepository {
  Future<WeatherModel?> getWeatherModel({
    required String city,
  }) async {
    final response = await Dio().get<Map<String, dynamic>>(
        'http://api.weatherapi.com/v1/current.json?key=b99405c578464981bb8174814230108&q=$city&aqi=no');

    final responseData = response.data;
    if (responseData == null) {
      return null;
    }

    final name = responseData['location']['name'] as String;
    final temperature = (responseData['current']['temp_c'] + 0.0) as double;

    return WeatherModel(city: name, temperature: temperature);
  }
}
