import 'package:logic/data/vos/city_vo.dart';
import 'package:logic/data/vos/weather_forecast_vo.dart';
import 'package:logic/data/vos/weather_vo.dart';

abstract class WeatherModel {
  /// from network
  Future<List<CityVO>> searchCity({
    required String keyword,
  });

  void getWeatherDetail({
    required String keyword,
    required int cityId,
  });

  void getWeatherForecast({
    required String keyword,
    required int cityId,
  });

  /// from database
  void saveCity({required CityVO? city});

  Stream<List<CityVO>> getCityFromDatabase();

  /// delete city
  void deleteCity({required int cityId});

  /// weather from database
  Stream<WeatherVO?> getWeatherDetailFromDatabase({
    required String keyword,
    required int cityId,
  });

  Stream<WeatherForecastVO?> getWeatherForecastFromDatabase({
    required String keyword,
    required int cityId,
  });
}
