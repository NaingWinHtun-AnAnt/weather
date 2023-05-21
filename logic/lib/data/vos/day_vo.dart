import 'package:json_annotation/json_annotation.dart';
import 'package:logic/data/vos/condition_vo.dart';

part 'day_vo.g.dart';

@JsonSerializable()
class DayVO {
  @JsonKey(name: "maxtemp_c")
  double? maxtempC;

  @JsonKey(name: "maxtemp_f")
  double? maxtempF;

  @JsonKey(name: "mintemp_c")
  double? mintempC;

  @JsonKey(name: "mintemp_f")
  double? mintempF;

  @JsonKey(name: "avgtemp_c")
  double? avgtempC;

  @JsonKey(name: "avgtemp_f")
  double? avgtempF;

  @JsonKey(name: "maxwind_mph")
  double? maxwindMph;

  @JsonKey(name: "maxwind_kph")
  double? maxwindKph;

  @JsonKey(name: "totalprecip_mm")
  double? totalprecipMm;

  @JsonKey(name: "totalprecip_in")
  double? totalprecipIn;

  @JsonKey(name: "totalsnow_cm")
  double? totalsnowCm;

  @JsonKey(name: "avgvis_km")
  double? avgvisKm;

  @JsonKey(name: "avgvis_miles")
  double? avgvisMiles;

  @JsonKey(name: "avghumidity")
  double? avghumidity;

  @JsonKey(name: "daily_will_it_rain")
  int? dailyWillItRain;

  @JsonKey(name: "daily_chance_of_rain")
  int? dailyChanceOfRain;

  @JsonKey(name: "daily_will_it_snow")
  int? dailyWillItSnow;

  @JsonKey(name: "daily_chance_of_snow")
  int? dailyChanceOfSnow;

  @JsonKey(name: "condition")
  ConditionVO? condition;

  @JsonKey(name: "uv")
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
