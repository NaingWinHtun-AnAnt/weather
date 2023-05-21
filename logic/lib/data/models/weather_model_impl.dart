import 'package:logic/data/models/weather_model.dart';
import 'package:logic/data/vos/city_vo.dart';
import 'package:logic/data/vos/weather_forecast_vo.dart';
import 'package:logic/data/vos/weather_vo.dart';
import 'package:logic/network/dataagents/data_agent.dart';
import 'package:logic/network/dataagents/retrofit_data_agent.dart';

class WeatherModelImpl extends WeatherModel {
  static final WeatherModelImpl _singleton = WeatherModelImpl._internal();

  factory WeatherModelImpl() => _singleton;

  WeatherModelImpl._internal();

  /// data agent
  final DataAgent _mDataAgent = RetrofitDataAgentImpl();

  @override
  Future<WeatherVO> getWeatherDetail({
    required String keyword,
    required String aqi,
  }) =>
      _mDataAgent.getWeatherDetail(keyword: keyword, aqi: aqi);

  @override
  Future<WeatherForecastVO> getWeatherForecast({
    required String keyword,
    required String days,
    required String aqi,
  }) =>
      _mDataAgent.getWeatherForecast(keyword: keyword, days: days, aqi: aqi);

  @override
  Future<List<CityVO>> searchCity({
    required String keyword,
  }) {
    print(">>>>>> $keyword");
    return _mDataAgent.searchCity(keyword: keyword);
  }
}
