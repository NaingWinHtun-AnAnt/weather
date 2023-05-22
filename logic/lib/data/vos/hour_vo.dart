import 'package:hive/hive.dart';
import 'package:json_annotation/json_annotation.dart';
import 'package:logic/data/vos/condition_vo.dart';
import 'package:logic/resources/hive_constants.dart';

part 'hour_vo.g.dart';

@JsonSerializable()
@HiveType(typeId: hiveTypeIdHourVO, adapterName: "HourVOAdapter")
class HourVO {
  @JsonKey(name: "time_epoch")
  @HiveField(0)
  int? timeEpoch;

  @JsonKey(name: "time")
  @HiveField(1)
  String? time;

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

  @JsonKey(name: "windchill_c")
  @HiveField(18)
  double? windchillC;

  @JsonKey(name: "windchill_f")
  @HiveField(19)
  double? windchillF;

  @JsonKey(name: "heatindex_c")
  @HiveField(20)
  double? heatindexC;

  @JsonKey(name: "heatindex_f")
  @HiveField(21)
  double? heatindexF;

  @JsonKey(name: "dewpoint_c")
  @HiveField(22)
  double? dewpointC;

  @JsonKey(name: "dewpoint_f")
  @HiveField(23)
  double? dewpointF;

  @JsonKey(name: "will_it_rain")
  @HiveField(24)
  int? willItRain;

  @JsonKey(name: "chance_of_rain")
  @HiveField(25)
  int? chanceOfRain;

  @JsonKey(name: "will_it_snow")
  @HiveField(26)
  int? willItSnow;

  @JsonKey(name: "chance_of_snow")
  @HiveField(27)
  int? chanceOfSnow;

  @JsonKey(name: "vis_km")
  @HiveField(28)
  double? visKm;

  @JsonKey(name: "vis_miles")
  @HiveField(29)
  double? visMiles;

  @JsonKey(name: "gust_mph")
  @HiveField(30)
  double? gustMph;

  @JsonKey(name: "gust_kph")
  @HiveField(31)
  double? gustKph;

  @JsonKey(name: "uv")
  @HiveField(32)
  double? uv;

  HourVO({
    this.timeEpoch,
    this.time,
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
    this.windchillC,
    this.windchillF,
    this.heatindexC,
    this.heatindexF,
    this.dewpointC,
    this.dewpointF,
    this.willItRain,
    this.chanceOfRain,
    this.willItSnow,
    this.chanceOfSnow,
    this.visKm,
    this.visMiles,
    this.gustMph,
    this.gustKph,
    this.uv,
  });

  factory HourVO.fromJson(Map<String, dynamic> json) => _$HourVOFromJson(json);

  Map<String, dynamic> toJson() => _$HourVOToJson(this);
}
