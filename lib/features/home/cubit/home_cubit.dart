import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:simple_weather/app/core/enums.dart';

import 'package:simple_weather/domain/models/weather_model.dart';
import 'package:simple_weather/domain/repositories/weather_repository.dart';

part 'home_state.dart';
part 'home_cubit.freezed.dart';

@injectable
class HomeCubit extends Cubit<HomeState> {
  HomeCubit({required this.weatherRepository})
      : super(HomeState(
          errorMessage: '',
          model: null,
          status: Status.initial,
        ));

  final WeatherRepository weatherRepository;

  Future<void> getWeatherModel({
    required String city,
  }) async {
    emit(HomeState(status: Status.loading, model: null, errorMessage: null));
    try {
      final weatherModel = await weatherRepository.getWeatherModel(city: city);
      emit(
        HomeState(
          model: weatherModel,
          status: Status.success,
          errorMessage: null,
        ),
      );
    } catch (error) {
      emit(
        HomeState(
          status: Status.error,
          errorMessage: error.toString(),
          model: null,
        ),
      );
    }
  }
}
