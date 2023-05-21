import 'package:json_annotation/json_annotation.dart';

part 'air_quality_vo.g.dart';

@JsonSerializable()
class AirQualityVO {
  @JsonKey(name: "co")
  double? co;

  @JsonKey(name: "no2")
  double? no2;

  @JsonKey(name: "o3")
  double? o3;

  @JsonKey(name: "so2")
  double? so2;

  @JsonKey(name: "pm2_5")
  double? pm25;

  @JsonKey(name: "pm10")
  double? pm10;

  @JsonKey(name: "us-epa-index")
  int? usEpaIndex;

  @JsonKey(name: "gb-defra-index")
  int? gbDefraIndex;

  AirQualityVO({
    this.co,
    this.no2,
    this.o3,
    this.so2,
    this.pm25,
    this.pm10,
    this.usEpaIndex,
    this.gbDefraIndex,
  });

  factory AirQualityVO.fromJson(Map<String, dynamic> json) =>
      _$AirQualityVOFromJson(json);

  Map<String, dynamic> toJson() => _$AirQualityVOToJson(this);
}
