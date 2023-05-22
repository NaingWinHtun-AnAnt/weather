import 'package:hive/hive.dart';
import 'package:json_annotation/json_annotation.dart';
import 'package:logic/resources/hive_constants.dart';

part 'air_quality_vo.g.dart';

@JsonSerializable()
@HiveType(typeId: hiveTypeIdAirQualityVO, adapterName: "AirQualityVOAdapter")
class AirQualityVO {
  @JsonKey(name: "co")
  @HiveField(0)
  double? co;

  @JsonKey(name: "no2")
  @HiveField(1)
  double? no2;

  @JsonKey(name: "o3")
  @HiveField(2)
  double? o3;

  @JsonKey(name: "so2")
  @HiveField(3)
  double? so2;

  @JsonKey(name: "pm2_5")
  @HiveField(4)
  double? pm25;

  @JsonKey(name: "pm10")
  @HiveField(5)
  double? pm10;

  @JsonKey(name: "us-epa-index")
  @HiveField(6)
  int? usEpaIndex;

  @JsonKey(name: "gb-defra-index")
  @HiveField(7)
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
