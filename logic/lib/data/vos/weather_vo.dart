import 'package:hive/hive.dart';
import 'package:json_annotation/json_annotation.dart';
import 'package:logic/data/vos/current_vo.dart';
import 'package:logic/data/vos/location_vo.dart';
import 'package:logic/resources/hive_constants.dart';

part 'weather_vo.g.dart';

@JsonSerializable()
@HiveType(typeId: hiveTypeIdWeatherVO, adapterName: "WeatherVOAdapter")
class WeatherVO {
  @JsonKey(name: "location")
  @HiveField(0)
  LocationVO? location;

  @JsonKey(name: "current")
  @HiveField(1)
  CurrentVO? current;

  WeatherVO({
    this.location,
    this.current,
  });

  factory WeatherVO.fromJson(Map<String, dynamic> json) =>
      _$WeatherVOFromJson(json);

  Map<String, dynamic> toJson() => _$WeatherVOToJson(this);
}
