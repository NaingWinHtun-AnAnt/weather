import 'package:hive/hive.dart';
import 'package:json_annotation/json_annotation.dart';
import 'package:logic/data/vos/air_quality_vo.dart';
import 'package:logic/data/vos/condition_vo.dart';
import 'package:logic/resources/hive_constants.dart';

part 'current_vo.g.dart';

@JsonSerializable()
@HiveType(typeId: hiveTypeIdCurrentVO, adapterName: "CurrentVOAdapter")
class CurrentVO {
  @JsonKey(name: "last_updated_epoch")
  @HiveField(0)
  int? lastUpdatedEpoch;

  @JsonKey(name: "last_updated")
  @HiveField(1)
  String? lastUpdated;

  @JsonKey(name: "temp_c")
  @HiveField(2)
  double? tempC;

  @JsonKey(name: "temp_f")
  @HiveField(3)
  double? tempF;

  @JsonKey(name: "is_day")
  @HiveField(4)
  int? isDay;

  @JsonKey(name: "condition")
  @HiveField(5)
  ConditionVO? condition;

  @JsonKey(name: "wind_mph")
  @HiveField(6)
  double? windMph;

  @JsonKey(name: "wind_kph")
  @HiveField(7)
  double? windKph;

  @JsonKey(name: "wind_degree")
  @HiveField(8)
  int? windDegree;

  @JsonKey(name: "wind_dir")
  @HiveField(9)
  String? windDir;

  @JsonKey(name: "pressure_mb")
  @HiveField(10)
  double? pressureMb;

  @JsonKey(name: "pressure_in")
  @HiveField(11)
  double? pressureIn;

  @JsonKey(name: "precip_mm")
  @HiveField(12)
  double? precipMm;

  @JsonKey(name: "precip_in")
  @HiveField(13)
  double? precipIn;

  @JsonKey(name: "humidity")
  @HiveField(14)
  int? humidity;

  @JsonKey(name: "cloud")
  @HiveField(15)
  int? cloud;

  @JsonKey(name: "feelslike_c")
  @HiveField(16)
  double? feelslikeC;

  @JsonKey(name: "feelslike_f")
  @HiveField(17)
  double? feelslikeF;

  @JsonKey(name: "vis_km")
  @HiveField(18)
  double? visKm;

  @JsonKey(name: "vis_miles")
  @HiveField(19)
  double? visMiles;

  @JsonKey(name: "uv")
  @HiveField(20)
  double? uv;

  @JsonKey(name: "gust_mph")
  @HiveField(21)
  double? gustMph;

  @JsonKey(name: "gust_kph")
  @HiveField(22)
  double? gustKph;

  @JsonKey(name: "air_quality")
  @HiveField(23)
  AirQualityVO? airQuality;

  CurrentVO({
    this.lastUpdatedEpoch,
    this.lastUpdated,
    this.tempC,
    this.tempF,
    this.isDay,
    this.condition,
    this.windMph,
    this.windKph,
    this.windDegree,
    this.windDir,
    this.pressureMb,
    this.pressureIn,
    this.precipMm,
    this.precipIn,
    this.humidity,
    this.cloud,
    this.feelslikeC,
    this.feelslikeF,
    this.visKm,
    this.visMiles,
    this.uv,
    this.gustMph,
    this.gustKph,
    this.airQuality,
  });

  factory CurrentVO.fromJson(Map<String, dynamic> json) =>
      _$CurrentVOFromJson(json);

  Map<String, dynamic> toJson() => _$CurrentVOToJson(this);
}
