import 'package:dio/dio.dart';
import 'package:simple_weather/domain/models/weather_model.dart';

class WeatherRemoteDataSource {
  Future<Map<String, dynamic>?> getWeatherModel({
    required String city,
  }) async {
    // http://api.weatherapi.com/v1/current.json?key=b99405c578464981bb8174814230108&q=Poznan&aqi=no
    final response = await Dio().get(
        'http://api.weatherapi.com/v1/current.json?key=b99405c578464981bb8174814230108&q=Poznan&aqi=no');
    return (response.data);
  }
}
