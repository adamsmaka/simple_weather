import 'package:injectable/injectable.dart';
import 'package:simple_weather/data/remote_data_sources/remote_data_source.dart';
import 'package:simple_weather/domain/models/weather_model.dart';
@injectable
class WeatherRepository {
  WeatherRepository({required this.remoteDataSource});
  final RemoteDataSource remoteDataSource;
  Future<WeatherModel?> getWeatherModel({
    required String city,
  }) async {
    return remoteDataSource.getWeatherData( city);
   
  }
}
