import 'package:hive_flutter/hive_flutter.dart';
import 'package:logic/data/vos/weather_vo.dart';
import 'package:logic/resources/hive_constants.dart';

class WeatherDao {
  static final WeatherDao _singleton = WeatherDao._internal();

  factory WeatherDao() => _singleton;

  WeatherDao._internal();

  /// open quote hive box
  Box<WeatherVO> getWeatherBox() => Hive.box<WeatherVO>(boxNameWeatherVO);

  void clearBox() => getWeatherBox().clear();

  void saveWeather({
    required WeatherVO? weather,
    required int cityId,
  }) async {
    if (weather != null) {
      await getWeatherBox().putAll(
        {
          cityId: weather,
        },
      );
    }
  }

  WeatherVO? getWeather({required int cityId}) =>
      getWeatherBox().get(cityId);

  /// reactive programming
  Stream<void> getStreamEvent() => getWeatherBox().watch();

  Stream<WeatherVO?> getWeatherStream({required int cityId}) =>
      Stream.value(getWeather(cityId: cityId));
}
