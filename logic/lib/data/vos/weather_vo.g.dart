// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'weather_vo.dart';

// **************************************************************************
// TypeAdapterGenerator
// **************************************************************************

class WeatherVOAdapter extends TypeAdapter<WeatherVO> {
  @override
  final int typeId = 1;

  @override
  WeatherVO read(BinaryReader reader) {
    final numOfFields = reader.readByte();
    final fields = <int, dynamic>{
      for (int i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return WeatherVO(
      location: fields[0] as LocationVO?,
      current: fields[1] as CurrentVO?,
    );
  }

  @override
  void write(BinaryWriter writer, WeatherVO obj) {
    writer
      ..writeByte(2)
      ..writeByte(0)
      ..write(obj.location)
      ..writeByte(1)
      ..write(obj.current);
  }

  @override
  int get hashCode => typeId.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is WeatherVOAdapter &&
          runtimeType == other.runtimeType &&
          typeId == other.typeId;
}

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
