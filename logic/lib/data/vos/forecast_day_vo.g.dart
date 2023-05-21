// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'forecast_day_vo.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

ForecastDayVO _$ForecastDayVOFromJson(Map<String, dynamic> json) =>
    ForecastDayVO(
      date: json['date'] as String?,
      dateEpoch: json['date_epoch'] as int?,
      day: json['day'] == null
          ? null
          : DayVO.fromJson(json['day'] as Map<String, dynamic>),
      astro: json['astro'] == null
          ? null
          : AstroVO.fromJson(json['astro'] as Map<String, dynamic>),
      hour: (json['hour'] as List<dynamic>?)
          ?.map((e) => HourVO.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$ForecastDayVOToJson(ForecastDayVO instance) =>
    <String, dynamic>{
      'date': instance.date,
      'date_epoch': instance.dateEpoch,
      'day': instance.day,
      'astro': instance.astro,
      'hour': instance.hour,
    };
