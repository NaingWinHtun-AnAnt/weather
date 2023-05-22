import 'package:hive/hive.dart';
import 'package:json_annotation/json_annotation.dart';
import 'package:logic/data/vos/condition_vo.dart';
import 'package:logic/resources/hive_constants.dart';

part 'day_vo.g.dart';

@JsonSerializable()
@HiveType(typeId: hiveTypeIdDayVO, adapterName: "DayVOAdapter")
class DayVO {
  @JsonKey(name: "maxtemp_c")
  @HiveField(0)
  double? maxtempC;

  @JsonKey(name: "maxtemp_f")
  @HiveField(1)
  double? maxtempF;

  @JsonKey(name: "mintemp_c")
  @HiveField(2)
  double? mintempC;

  @JsonKey(name: "mintemp_f")
  @HiveField(3)
  double? mintempF;

  @JsonKey(name: "avgtemp_c")
  @HiveField(4)
  double? avgtempC;

  @JsonKey(name: "avgtemp_f")
  @HiveField(5)
  double? avgtempF;

  @JsonKey(name: "maxwind_mph")
  @HiveField(6)
  double? maxwindMph;

  @JsonKey(name: "maxwind_kph")
  @HiveField(7)
  double? maxwindKph;

  @JsonKey(name: "totalprecip_mm")
  @HiveField(8)
  double? totalprecipMm;

  @JsonKey(name: "totalprecip_in")
  @HiveField(9)
  double? totalprecipIn;

  @JsonKey(name: "totalsnow_cm")
  @HiveField(10)
  double? totalsnowCm;

  @JsonKey(name: "avgvis_km")
  @HiveField(11)
  double? avgvisKm;

  @JsonKey(name: "avgvis_miles")
  @HiveField(12)
  double? avgvisMiles;

  @JsonKey(name: "avghumidity")
  @HiveField(13)
  double? avghumidity;

  @JsonKey(name: "daily_will_it_rain")
  @HiveField(14)
  int? dailyWillItRain;

  @JsonKey(name: "daily_chance_of_rain")
  @HiveField(15)
  int? dailyChanceOfRain;

  @JsonKey(name: "daily_will_it_snow")
  @HiveField(16)
  int? dailyWillItSnow;

  @JsonKey(name: "daily_chance_of_snow")
  @HiveField(17)
  int? dailyChanceOfSnow;

  @JsonKey(name: "condition")
  @HiveField(18)
  ConditionVO? condition;

  @JsonKey(name: "uv")
  @HiveField(19)
  double? uv;

  DayVO({
    this.maxtempC,
    this.maxtempF,
    this.mintempC,
    this.mintempF,
    this.avgtempC,
    this.avgtempF,
    this.maxwindMph,
    this.maxwindKph,
    this.totalprecipMm,
    this.totalprecipIn,
    this.totalsnowCm,
    this.avgvisKm,
    this.avgvisMiles,
    this.avghumidity,
    this.dailyWillItRain,
    this.dailyChanceOfRain,
    this.dailyWillItSnow,
    this.dailyChanceOfSnow,
    this.condition,
    this.uv,
  });

  factory DayVO.fromJson(Map<String, dynamic> json) => _$DayVOFromJson(json);

  Map<String, dynamic> toJson() => _$DayVOToJson(this);
}
