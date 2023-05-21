import 'package:logic/data/vos/city_vo.dart';
import 'package:logic/data/vos/weather_forecast_vo.dart';
import 'package:logic/data/vos/weather_vo.dart';

abstract class WeatherModel {
  Future<List<CityVO>> searchCity({
    required String keyword,
  });

  Future<WeatherVO> getWeatherDetail({
    required String keyword,
    required String aqi,
  });

  Future<WeatherForecastVO> getWeatherForecast({
    required String keyword,
    required String days,
    required String aqi,
  });
}
