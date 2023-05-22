import 'package:hive/hive.dart';
import 'package:json_annotation/json_annotation.dart';
import 'package:logic/resources/hive_constants.dart';

part 'astro_vo.g.dart';

@JsonSerializable()
@HiveType(typeId: hiveTypeIdAstroVO, adapterName: "AstroVOAdapter")
class AstroVO {
  @JsonKey(name: "sunrise")
  @HiveField(0)
  String? sunrise;

  @JsonKey(name: "sunset")
  @HiveField(1)
  String? sunset;

  @JsonKey(name: "moonrise")
  @HiveField(2)
  String? moonrise;

  @JsonKey(name: "moonset")
  @HiveField(3)
  String? moonset;

  @JsonKey(name: "moon_phase")
  @HiveField(4)
  String? moonPhase;

  @JsonKey(name: "moon_illumination")
  @HiveField(5)
  String? moonIllumination;

  @JsonKey(name: "is_moon_up")
  @HiveField(6)
  int? isMoonUp;

  @JsonKey(name: "is_sun_up")
  @HiveField(7)
  int? isSunUp;

  AstroVO({
    this.sunrise,
    this.sunset,
    this.moonrise,
    this.moonset,
    this.moonPhase,
    this.moonIllumination,
    this.isMoonUp,
    this.isSunUp,
  });

  factory AstroVO.fromJson(Map<String, dynamic> json) =>
      _$AstroVOFromJson(json);

  Map<String, dynamic> toJson() => _$AstroVOToJson(this);
}
