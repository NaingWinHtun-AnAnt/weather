import 'package:json_annotation/json_annotation.dart';
import 'package:logic/data/vos/current_vo.dart';
import 'package:logic/data/vos/forecast_vo.dart';
import 'package:logic/data/vos/location_vo.dart';

part 'weather_forecast_vo.g.dart';

@JsonSerializable()
class WeatherForecastVO {
  @JsonKey(name: "location")
  LocationVO? location;

  @JsonKey(name: "current")
  CurrentVO? current;

  @JsonKey(name: "forecast")
  ForecastVO? forecast;

  WeatherForecastVO({
    this.location,
    this.current,
    this.forecast,
  });

  factory WeatherForecastVO.fromJson(Map<String, dynamic> json) =>
      _$WeatherForecastVOFromJson(json);

  Map<String, dynamic> toJson() => _$WeatherForecastVOToJson(this);
}
