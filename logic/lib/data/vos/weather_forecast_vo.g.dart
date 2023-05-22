// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'weather_forecast_vo.dart';

// **************************************************************************
// TypeAdapterGenerator
// **************************************************************************

class WeatherForecastVOAdapter extends TypeAdapter<WeatherForecastVO> {
  @override
  final int typeId = 2;

  @override
  WeatherForecastVO read(BinaryReader reader) {
    final numOfFields = reader.readByte();
    final fields = <int, dynamic>{
      for (int i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return WeatherForecastVO(
      location: fields[0] as LocationVO?,
      current: fields[1] as CurrentVO?,
      forecast: fields[2] as ForecastVO?,
    );
  }

  @override
  void write(BinaryWriter writer, WeatherForecastVO obj) {
    writer
      ..writeByte(3)
      ..writeByte(0)
      ..write(obj.location)
      ..writeByte(1)
      ..write(obj.current)
      ..writeByte(2)
      ..write(obj.forecast);
  }

  @override
  int get hashCode => typeId.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is WeatherForecastVOAdapter &&
          runtimeType == other.runtimeType &&
          typeId == other.typeId;
}

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
