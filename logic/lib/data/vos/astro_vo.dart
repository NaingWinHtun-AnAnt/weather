import 'package:json_annotation/json_annotation.dart';

part 'astro_vo.g.dart';

@JsonSerializable()
class AstroVO {
  @JsonKey(name: "sunrise")
  String? sunrise;

  @JsonKey(name: "sunset")
  String? sunset;

  @JsonKey(name: "moonrise")
  String? moonrise;

  @JsonKey(name: "moonset")
  String? moonset;

  @JsonKey(name: "moon_phase")
  String? moonPhase;

  @JsonKey(name: "moon_illumination")
  String? moonIllumination;

  @JsonKey(name: "is_moon_up")
  int? isMoonUp;

  @JsonKey(name: "is_sun_up")
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
