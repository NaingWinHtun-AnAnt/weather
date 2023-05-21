// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'astro_vo.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

AstroVO _$AstroVOFromJson(Map<String, dynamic> json) => AstroVO(
      sunrise: json['sunrise'] as String?,
      sunset: json['sunset'] as String?,
      moonrise: json['moonrise'] as String?,
      moonset: json['moonset'] as String?,
      moonPhase: json['moon_phase'] as String?,
      moonIllumination: json['moon_illumination'] as String?,
      isMoonUp: json['is_moon_up'] as int?,
      isSunUp: json['is_sun_up'] as int?,
    );

Map<String, dynamic> _$AstroVOToJson(AstroVO instance) => <String, dynamic>{
      'sunrise': instance.sunrise,
      'sunset': instance.sunset,
      'moonrise': instance.moonrise,
      'moonset': instance.moonset,
      'moon_phase': instance.moonPhase,
      'moon_illumination': instance.moonIllumination,
      'is_moon_up': instance.isMoonUp,
      'is_sun_up': instance.isSunUp,
    };
