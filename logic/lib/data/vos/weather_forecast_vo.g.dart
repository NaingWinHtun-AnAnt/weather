// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'weather_forecast_vo.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

WeatherForecastVO _$WeatherForecastVOFromJson(Map<String, dynamic> json) =>
    WeatherForecastVO(
      location: json['location'] == null
          ? null
          : LocationVO.fromJson(json['location'] as Map<String, dynamic>),
      current: json['current'] == null
          ? null
          : CurrentVO.fromJson(json['current'] as Map<String, dynamic>),
      forecast: json['forecast'] == null
          ? null
          : ForecastVO.fromJson(json['forecast'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$WeatherForecastVOToJson(WeatherForecastVO instance) =>
    <String, dynamic>{
      'location': instance.location,
      'current': instance.current,
      'forecast': instance.forecast,
    };
