import 'package:dio/dio.dart';
import 'package:get_it/get_it.dart';
import 'package:injectable/injectable.dart';

import 'injectable_configure.config.dart';

final getIt = GetIt.instance;

@InjectableInit()
void configureDependecies() => getIt.init();


@module  
abstract class RegisterModule {  
 // You can register named preemptive types like follows  
  @Named("BaseUrl")  
  String get baseUrl => 'http://api.weatherapi.com/v1/';  
  
  // url here will be injected  
  @lazySingleton  
  Dio dio(@Named('BaseUrl') String url) => Dio(BaseOptions(baseUrl: url));  
  
 
}  