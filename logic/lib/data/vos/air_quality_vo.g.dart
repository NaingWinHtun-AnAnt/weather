// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'air_quality_vo.dart';

// **************************************************************************
// TypeAdapterGenerator
// **************************************************************************

class AirQualityVOAdapter extends TypeAdapter<AirQualityVO> {
  @override
  final int typeId = 6;

  @override
  AirQualityVO read(BinaryReader reader) {
    final numOfFields = reader.readByte();
    final fields = <int, dynamic>{
      for (int i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return AirQualityVO(
      co: fields[0] as double?,
      no2: fields[1] as double?,
      o3: fields[2] as double?,
      so2: fields[3] as double?,
      pm25: fields[4] as double?,
      pm10: fields[5] as double?,
      usEpaIndex: fields[6] as int?,
      gbDefraIndex: fields[7] as int?,
    );
  }

  @override
  void write(BinaryWriter writer, AirQualityVO obj) {
    writer
      ..writeByte(8)
      ..writeByte(0)
      ..write(obj.co)
      ..writeByte(1)
      ..write(obj.no2)
      ..writeByte(2)
      ..write(obj.o3)
      ..writeByte(3)
      ..write(obj.so2)
      ..writeByte(4)
      ..write(obj.pm25)
      ..writeByte(5)
      ..write(obj.pm10)
      ..writeByte(6)
      ..write(obj.usEpaIndex)
      ..writeByte(7)
      ..write(obj.gbDefraIndex);
  }

  @override
  int get hashCode => typeId.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is AirQualityVOAdapter &&
          runtimeType == other.runtimeType &&
          typeId == other.typeId;
}

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

AirQualityVO _$AirQualityVOFromJson(Map<String, dynamic> json) => AirQualityVO(
      co: (json['co'] as num?)?.toDouble(),
      no2: (json['no2'] as num?)?.toDouble(),
      o3: (json['o3'] as num?)?.toDouble(),
      so2: (json['so2'] as num?)?.toDouble(),
      pm25: (json['pm2_5'] as num?)?.toDouble(),
      pm10: (json['pm10'] as num?)?.toDouble(),
      usEpaIndex: json['us-epa-index'] as int?,
      gbDefraIndex: json['gb-defra-index'] as int?,
    );

Map<String, dynamic> _$AirQualityVOToJson(AirQualityVO instance) =>
    <String, dynamic>{
      'co': instance.co,
      'no2': instance.no2,
      'o3': instance.o3,
      'so2': instance.so2,
      'pm2_5': instance.pm25,
      'pm10': instance.pm10,
      'us-epa-index': instance.usEpaIndex,
      'gb-defra-index': instance.gbDefraIndex,
    };
