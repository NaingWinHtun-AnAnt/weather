import 'package:hive/hive.dart';
import 'package:json_annotation/json_annotation.dart';
import 'package:logic/data/vos/current_vo.dart';
import 'package:logic/data/vos/forecast_vo.dart';
import 'package:logic/data/vos/location_vo.dart';
import 'package:logic/resources/hive_constants.dart';

part 'weather_forecast_vo.g.dart';

@JsonSerializable()
@HiveType(
    typeId: hiveTypeIdWeatherForecastVO,
    adapterName: "WeatherForecastVOAdapter")
class WeatherForecastVO {
  @JsonKey(name: "location")
  @HiveField(0)
  LocationVO? location;

  @JsonKey(name: "current")
  @HiveField(1)
  CurrentVO? current;

  @JsonKey(name: "forecast")
  @HiveField(2)
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
