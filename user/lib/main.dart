import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:hive_flutter/hive_flutter.dart';
import 'package:logic/data/vos/air_quality_vo.dart';
import 'package:logic/data/vos/astro_vo.dart';
import 'package:logic/data/vos/city_vo.dart';
import 'package:logic/data/vos/condition_vo.dart';
import 'package:logic/data/vos/current_vo.dart';
import 'package:logic/data/vos/day_vo.dart';
import 'package:logic/data/vos/forecast_day_vo.dart';
import 'package:logic/data/vos/forecast_vo.dart';
import 'package:logic/data/vos/hour_vo.dart';
import 'package:logic/data/vos/location_vo.dart';
import 'package:logic/data/vos/weather_forecast_vo.dart';
import 'package:logic/data/vos/weather_vo.dart';
import 'package:logic/resources/hive_constants.dart';
import 'package:ui/export_ui.dart';
import 'package:user/fcm/fcm_service.dart';
import 'package:user/pages/home_page.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();

  /// if not firebase services will not work
  await Firebase.initializeApp();
  FCMService().listenForMessages();

  /// hive
  await Hive.initFlutter();

  /// register box
  Hive.registerAdapter(CityVOAdapter());
  Hive.registerAdapter(WeatherVOAdapter());
  Hive.registerAdapter(WeatherForecastVOAdapter());
  Hive.registerAdapter(LocationVOAdapter());
  Hive.registerAdapter(CurrentVOAdapter());
  Hive.registerAdapter(ConditionVOAdapter());
  Hive.registerAdapter(AirQualityVOAdapter());
  Hive.registerAdapter(ForecastVOAdapter());
  Hive.registerAdapter(ForecastDayVOAdapter());
  Hive.registerAdapter(DayVOAdapter());
  Hive.registerAdapter(AstroVOAdapter());
  Hive.registerAdapter(HourVOAdapter());

  /// open box
  await Hive.openBox<CityVO>(boxNameCityVO);
  await Hive.openBox<WeatherVO>(boxNameWeatherVO);
  await Hive.openBox<WeatherForecastVO>(boxNameWeatherForecastVO);

  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        appBarTheme: const AppBarTheme(
          color: colorPrimary,
        ),
        canvasColor: colorPrimary,
      ),
      debugShowCheckedModeBanner: false,
      home: const HomePage(),
    );
  }
}
