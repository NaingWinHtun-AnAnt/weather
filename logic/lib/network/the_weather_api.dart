import 'package:dio/dio.dart';
import 'package:logic/data/vos/city_vo.dart';
import 'package:logic/data/vos/weather_forecast_vo.dart';
import 'package:logic/data/vos/weather_vo.dart';
import 'package:logic/network/api_constants.dart';
import 'package:retrofit/retrofit.dart';

part 'the_weather_api.g.dart';

@RestApi(baseUrl: baseUrl)
abstract class TheWeatherApi {
  factory TheWeatherApi(Dio dio) = _TheWeatherApi;

  @POST(endPointSearchCity)
  Future<List<CityVO>> searchCity(
    @Query(paramKey) String key,
    @Query(paramQ) String keyword,
  );

  @POST(endPointWeatherDetail)
  Future<WeatherVO> getWeatherDetail(
    @Query(paramKey) String key,
    @Query(paramQ) String keyword,
    @Query(paramAqi) String aqi,
  );

  @POST(endPointForecast)
  Future<WeatherForecastVO> getWeatherForecast(
    @Query(paramKey) String key,
    @Query(paramQ) String keyword,
    @Query(paramDays) String days,
    @Query(paramAqi) String aqi,
  );
}
