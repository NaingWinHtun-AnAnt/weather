import 'package:dio/dio.dart';
import 'package:logic/data/vos/city_vo.dart';
import 'package:logic/data/vos/weather_forecast_vo.dart';
import 'package:logic/data/vos/weather_vo.dart';
import 'package:logic/network/api_constants.dart';
import 'package:logic/network/dataagents/data_agent.dart';
import 'package:logic/network/the_weather_api.dart';

class RetrofitDataAgentImpl extends DataAgent {
  late TheWeatherApi _mApi;

  static final RetrofitDataAgentImpl _singleton =
      RetrofitDataAgentImpl._internal();

  factory RetrofitDataAgentImpl() => _singleton;

  RetrofitDataAgentImpl._internal() {
    final dio = Dio();
    // dio.options = BaseOptions(
    // );
    _mApi = TheWeatherApi(dio);
  }

  @override
  Future<List<CityVO>> searchCity({
    required String keyword,
  }) =>
      _mApi.searchCity(apiKey, keyword);

  @override
  Future<WeatherForecastVO> getWeatherForecast({
    required String keyword,
  }) =>
      _mApi.getWeatherForecast(apiKey, keyword, "3", "yes");

  @override
  Future<WeatherVO> getWeatherDetail({
    required String keyword,
  }) =>
      _mApi.getWeatherDetail(apiKey, keyword, "yes");
}
