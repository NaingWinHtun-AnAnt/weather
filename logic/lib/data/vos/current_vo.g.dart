// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'current_vo.dart';

// **************************************************************************
// TypeAdapterGenerator
// **************************************************************************

class CurrentVOAdapter extends TypeAdapter<CurrentVO> {
  @override
  final int typeId = 4;

  @override
  CurrentVO read(BinaryReader reader) {
    final numOfFields = reader.readByte();
    final fields = <int, dynamic>{
      for (int i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return CurrentVO(
      lastUpdatedEpoch: fields[0] as int?,
      lastUpdated: fields[1] as String?,
      tempC: fields[2] as double?,
      tempF: fields[3] as double?,
      isDay: fields[4] as int?,
      condition: fields[5] as ConditionVO?,
      windMph: fields[6] as double?,
      windKph: fields[7] as double?,
      windDegree: fields[8] as int?,
      windDir: fields[9] as String?,
      pressureMb: fields[10] as double?,
      pressureIn: fields[11] as double?,
      precipMm: fields[12] as double?,
      precipIn: fields[13] as double?,
      humidity: fields[14] as int?,
      cloud: fields[15] as int?,
      feelslikeC: fields[16] as double?,
      feelslikeF: fields[17] as double?,
      visKm: fields[18] as double?,
      visMiles: fields[19] as double?,
      uv: fields[20] as double?,
      gustMph: fields[21] as double?,
      gustKph: fields[22] as double?,
      airQuality: fields[23] as AirQualityVO?,
    );
  }

  @override
  void write(BinaryWriter writer, CurrentVO obj) {
    writer
      ..writeByte(24)
      ..writeByte(0)
      ..write(obj.lastUpdatedEpoch)
      ..writeByte(1)
      ..write(obj.lastUpdated)
      ..writeByte(2)
      ..write(obj.tempC)
      ..writeByte(3)
      ..write(obj.tempF)
      ..writeByte(4)
      ..write(obj.isDay)
      ..writeByte(5)
      ..write(obj.condition)
      ..writeByte(6)
      ..write(obj.windMph)
      ..writeByte(7)
      ..write(obj.windKph)
      ..writeByte(8)
      ..write(obj.windDegree)
      ..writeByte(9)
      ..write(obj.windDir)
      ..writeByte(10)
      ..write(obj.pressureMb)
      ..writeByte(11)
      ..write(obj.pressureIn)
      ..writeByte(12)
      ..write(obj.precipMm)
      ..writeByte(13)
      ..write(obj.precipIn)
      ..writeByte(14)
      ..write(obj.humidity)
      ..writeByte(15)
      ..write(obj.cloud)
      ..writeByte(16)
      ..write(obj.feelslikeC)
      ..writeByte(17)
      ..write(obj.feelslikeF)
      ..writeByte(18)
      ..write(obj.visKm)
      ..writeByte(19)
      ..write(obj.visMiles)
      ..writeByte(20)
      ..write(obj.uv)
      ..writeByte(21)
      ..write(obj.gustMph)
      ..writeByte(22)
      ..write(obj.gustKph)
      ..writeByte(23)
      ..write(obj.airQuality);
  }

  @override
  int get hashCode => typeId.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is CurrentVOAdapter &&
          runtimeType == other.runtimeType &&
          typeId == other.typeId;
}

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

CurrentVO _$CurrentVOFromJson(Map<String, dynamic> json) => CurrentVO(
      lastUpdatedEpoch: json['last_updated_epoch'] as int?,
      lastUpdated: json['last_updated'] as String?,
      tempC: (json['temp_c'] as num?)?.toDouble(),
      tempF: (json['temp_f'] as num?)?.toDouble(),
      isDay: json['is_day'] as int?,
      condition: json['condition'] == null
          ? null
          : ConditionVO.fromJson(json['condition'] as Map<String, dynamic>),
      windMph: (json['wind_mph'] as num?)?.toDouble(),
      windKph: (json['wind_kph'] as num?)?.toDouble(),
      windDegree: json['wind_degree'] as int?,
      windDir: json['wind_dir'] as String?,
      pressureMb: (json['pressure_mb'] as num?)?.toDouble(),
      pressureIn: (json['pressure_in'] as num?)?.toDouble(),
      precipMm: (json['precip_mm'] as num?)?.toDouble(),
      precipIn: (json['precip_in'] as num?)?.toDouble(),
      humidity: json['humidity'] as int?,
      cloud: json['cloud'] as int?,
      feelslikeC: (json['feelslike_c'] as num?)?.toDouble(),
      feelslikeF: (json['feelslike_f'] as num?)?.toDouble(),
      visKm: (json['vis_km'] as num?)?.toDouble(),
      visMiles: (json['vis_miles'] as num?)?.toDouble(),
      uv: (json['uv'] as num?)?.toDouble(),
      gustMph: (json['gust_mph'] as num?)?.toDouble(),
      gustKph: (json['gust_kph'] as num?)?.toDouble(),
      airQuality: json['air_quality'] == null
          ? null
          : AirQualityVO.fromJson(json['air_quality'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$CurrentVOToJson(CurrentVO instance) => <String, dynamic>{
      'last_updated_epoch': instance.lastUpdatedEpoch,
      'last_updated': instance.lastUpdated,
      'temp_c': instance.tempC,
      'temp_f': instance.tempF,
      'is_day': instance.isDay,
      'condition': instance.condition,
      'wind_mph': instance.windMph,
      'wind_kph': instance.windKph,
      'wind_degree': instance.windDegree,
      'wind_dir': instance.windDir,
      'pressure_mb': instance.pressureMb,
      'pressure_in': instance.pressureIn,
      'precip_mm': instance.precipMm,
      'precip_in': instance.precipIn,
      'humidity': instance.humidity,
      'cloud': instance.cloud,
      'feelslike_c': instance.feelslikeC,
      'feelslike_f': instance.feelslikeF,
      'vis_km': instance.visKm,
      'vis_miles': instance.visMiles,
      'uv': instance.uv,
      'gust_mph': instance.gustMph,
      'gust_kph': instance.gustKph,
      'air_quality': instance.airQuality,
    };
