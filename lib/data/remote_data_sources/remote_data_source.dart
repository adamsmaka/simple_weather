import 'package:dio/dio.dart';
import 'package:injectable/injectable.dart';
import 'package:retrofit/http.dart';
import 'package:simple_weather/domain/models/weather_model.dart';
part 'remote_data_source.g.dart';

@injectable
@RestApi()
abstract class RemoteDataSource {
  @factoryMethod
  factory RemoteDataSource(
    Dio dio,
  ) = _RemoteDataSource;
  @GET('/current.json?key=e59a4a4b805c43f58f1164956231511&aqi=yes')
  Future<WeatherModel> getWeatherData(@Query('q') String city);
}
