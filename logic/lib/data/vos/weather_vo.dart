import 'package:json_annotation/json_annotation.dart';
import 'package:logic/data/vos/current_vo.dart';
import 'package:logic/data/vos/location_vo.dart';

part 'weather_vo.g.dart';

@JsonSerializable()
class WeatherVO {
  @JsonKey(name: "location")
  LocationVO? location;

  @JsonKey(name: "current")
  CurrentVO? current;

  WeatherVO({
    this.location,
    this.current,
  });

  factory WeatherVO.fromJson(Map<String, dynamic> json) =>
      _$WeatherVOFromJson(json);

  Map<String, dynamic> toJson() => _$WeatherVOToJson(this);
}
