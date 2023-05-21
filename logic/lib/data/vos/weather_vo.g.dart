// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'weather_vo.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

WeatherVO _$WeatherVOFromJson(Map<String, dynamic> json) => WeatherVO(
      location: json['location'] == null
          ? null
          : LocationVO.fromJson(json['location'] as Map<String, dynamic>),
      current: json['current'] == null
          ? null
          : CurrentVO.fromJson(json['current'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$WeatherVOToJson(WeatherVO instance) => <String, dynamic>{
      'location': instance.location,
      'current': instance.current,
    };
