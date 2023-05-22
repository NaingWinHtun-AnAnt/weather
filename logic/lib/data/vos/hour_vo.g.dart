// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'hour_vo.dart';

// **************************************************************************
// TypeAdapterGenerator
// **************************************************************************

class HourVOAdapter extends TypeAdapter<HourVO> {
  @override
  final int typeId = 11;

  @override
  HourVO read(BinaryReader reader) {
    final numOfFields = reader.readByte();
    final fields = <int, dynamic>{
      for (int i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return HourVO(
      timeEpoch: fields[0] as int?,
      time: fields[1] as String?,
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
      windchillC: fields[18] as double?,
      windchillF: fields[19] as double?,
      heatindexC: fields[20] as double?,
      heatindexF: fields[21] as double?,
      dewpointC: fields[22] as double?,
      dewpointF: fields[23] as double?,
      willItRain: fields[24] as int?,
      chanceOfRain: fields[25] as int?,
      willItSnow: fields[26] as int?,
      chanceOfSnow: fields[27] as int?,
      visKm: fields[28] as double?,
      visMiles: fields[29] as double?,
      gustMph: fields[30] as double?,
      gustKph: fields[31] as double?,
      uv: fields[32] as double?,
    );
  }

  @override
  void write(BinaryWriter writer, HourVO obj) {
    writer
      ..writeByte(33)
      ..writeByte(0)
      ..write(obj.timeEpoch)
      ..writeByte(1)
      ..write(obj.time)
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
      ..write(obj.windchillC)
      ..writeByte(19)
      ..write(obj.windchillF)
      ..writeByte(20)
      ..write(obj.heatindexC)
      ..writeByte(21)
      ..write(obj.heatindexF)
      ..writeByte(22)
      ..write(obj.dewpointC)
      ..writeByte(23)
      ..write(obj.dewpointF)
      ..writeByte(24)
      ..write(obj.willItRain)
      ..writeByte(25)
      ..write(obj.chanceOfRain)
      ..writeByte(26)
      ..write(obj.willItSnow)
      ..writeByte(27)
      ..write(obj.chanceOfSnow)
      ..writeByte(28)
      ..write(obj.visKm)
      ..writeByte(29)
      ..write(obj.visMiles)
      ..writeByte(30)
      ..write(obj.gustMph)
      ..writeByte(31)
      ..write(obj.gustKph)
      ..writeByte(32)
      ..write(obj.uv);
  }

  @override
  int get hashCode => typeId.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is HourVOAdapter &&
          runtimeType == other.runtimeType &&
          typeId == other.typeId;
}

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

HourVO _$HourVOFromJson(Map<String, dynamic> json) => HourVO(
      timeEpoch: json['time_epoch'] as int?,
      time: json['time'] as String?,
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
      windchillC: (json['windchill_c'] as num?)?.toDouble(),
      windchillF: (json['windchill_f'] as num?)?.toDouble(),
      heatindexC: (json['heatindex_c'] as num?)?.toDouble(),
      heatindexF: (json['heatindex_f'] as num?)?.toDouble(),
      dewpointC: (json['dewpoint_c'] as num?)?.toDouble(),
      dewpointF: (json['dewpoint_f'] as num?)?.toDouble(),
      willItRain: json['will_it_rain'] as int?,
      chanceOfRain: json['chance_of_rain'] as int?,
      willItSnow: json['will_it_snow'] as int?,
      chanceOfSnow: json['chance_of_snow'] as int?,
      visKm: (json['vis_km'] as num?)?.toDouble(),
      visMiles: (json['vis_miles'] as num?)?.toDouble(),
      gustMph: (json['gust_mph'] as num?)?.toDouble(),
      gustKph: (json['gust_kph'] as num?)?.toDouble(),
      uv: (json['uv'] as num?)?.toDouble(),
    );

Map<String, dynamic> _$HourVOToJson(HourVO instance) => <String, dynamic>{
      'time_epoch': instance.timeEpoch,
      'time': instance.time,
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
      'windchill_c': instance.windchillC,
      'windchill_f': instance.windchillF,
      'heatindex_c': instance.heatindexC,
      'heatindex_f': instance.heatindexF,
      'dewpoint_c': instance.dewpointC,
      'dewpoint_f': instance.dewpointF,
      'will_it_rain': instance.willItRain,
      'chance_of_rain': instance.chanceOfRain,
      'will_it_snow': instance.willItSnow,
      'chance_of_snow': instance.chanceOfSnow,
      'vis_km': instance.visKm,
      'vis_miles': instance.visMiles,
      'gust_mph': instance.gustMph,
      'gust_kph': instance.gustKph,
      'uv': instance.uv,
    };
