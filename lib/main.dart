import 'package:flutter/material.dart';
import 'package:simple_weather/app/injectable_configure.dart';
import 'package:simple_weather/features/home/pages/home_page.dart';

void main() {
  runApp(const MyApp());
  configureDependecies();
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Weather App',
      theme: ThemeData(
        primarySwatch: Colors.orange,
      ),
      home: const HomePage(),
    );
  }
}
