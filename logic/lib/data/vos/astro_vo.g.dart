// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'astro_vo.dart';

// **************************************************************************
// TypeAdapterGenerator
// **************************************************************************

class AstroVOAdapter extends TypeAdapter<AstroVO> {
  @override
  final int typeId = 10;

  @override
  AstroVO read(BinaryReader reader) {
    final numOfFields = reader.readByte();
    final fields = <int, dynamic>{
      for (int i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return AstroVO(
      sunrise: fields[0] as String?,
      sunset: fields[1] as String?,
      moonrise: fields[2] as String?,
      moonset: fields[3] as String?,
      moonPhase: fields[4] as String?,
      moonIllumination: fields[5] as String?,
      isMoonUp: fields[6] as int?,
      isSunUp: fields[7] as int?,
    );
  }

  @override
  void write(BinaryWriter writer, AstroVO obj) {
    writer
      ..writeByte(8)
      ..writeByte(0)
      ..write(obj.sunrise)
      ..writeByte(1)
      ..write(obj.sunset)
      ..writeByte(2)
      ..write(obj.moonrise)
      ..writeByte(3)
      ..write(obj.moonset)
      ..writeByte(4)
      ..write(obj.moonPhase)
      ..writeByte(5)
      ..write(obj.moonIllumination)
      ..writeByte(6)
      ..write(obj.isMoonUp)
      ..writeByte(7)
      ..write(obj.isSunUp);
  }

  @override
  int get hashCode => typeId.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is AstroVOAdapter &&
          runtimeType == other.runtimeType &&
          typeId == other.typeId;
}

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
