import 'package:hive_flutter/hive_flutter.dart';
import 'package:logic/data/vos/weather_forecast_vo.dart';
import 'package:logic/resources/hive_constants.dart';

class WeatherForecastDao {
  static final WeatherForecastDao _singleton = WeatherForecastDao._internal();

  factory WeatherForecastDao() => _singleton;

  WeatherForecastDao._internal();

  /// open quote hive box
  Box<WeatherForecastVO> getWeatherForecastBox() =>
      Hive.box<WeatherForecastVO>(boxNameWeatherForecastVO);

  void clearBox() => getWeatherForecastBox().clear();

  void saveWeatherForecast({
    required WeatherForecastVO? weatherForecast,
    required int cityId,
  }) async {
    if (weatherForecast != null) {
      await getWeatherForecastBox().putAll(
        {
          cityId: weatherForecast,
        },
      );
    }
  }

  WeatherForecastVO? getWeatherForecast({required int cityId}) =>
      getWeatherForecastBox().get(cityId);

  /// reactive programming
  Stream<void> getStreamEvent() => getWeatherForecastBox().watch();

  Stream<WeatherForecastVO?> getWeatherForecastStream({required int cityId}) =>
      Stream.value(getWeatherForecast(cityId: cityId));
}
