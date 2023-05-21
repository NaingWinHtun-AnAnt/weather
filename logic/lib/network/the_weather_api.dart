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
    @Field(paramKey) String key,
    @Field(paramQ) String keyword,
  );

  @POST(endPointWeatherDetail)
  Future<WeatherVO> getWeatherDetail(
    @Field(paramKey) String key,
    @Field(paramQ) String keyword,
    @Field(paramAqi) String aqi,
  );

  @POST(endPointWeatherDetail)
  Future<WeatherForecastVO> getWeatherForecast(
    @Field(paramKey) String key,
    @Field(paramQ) String keyword,
    @Field(paramDays) String days,
    @Field(paramAqi) String aqi,
  );
}
