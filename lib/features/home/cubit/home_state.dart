part of 'home_cubit.dart';

@freezed
class HomeState with _$HomeState {
  factory HomeState(
    {required WeatherModel? model,
   required Status status,
  required  String? errorMessage,}
  ) = _HomeState;
  // const HomeState({
  //   this.model,
  //   this.status = Status.initial,
  //   this.errorMessage,
  // });
  // final WeatherModel? model;

  // final Status status;
  // final String? errorMessage;
}
