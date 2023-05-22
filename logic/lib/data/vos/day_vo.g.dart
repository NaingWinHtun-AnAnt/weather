// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'day_vo.dart';

// **************************************************************************
// TypeAdapterGenerator
// **************************************************************************

class DayVOAdapter extends TypeAdapter<DayVO> {
  @override
  final int typeId = 9;

  @override
  DayVO read(BinaryReader reader) {
    final numOfFields = reader.readByte();
    final fields = <int, dynamic>{
      for (int i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return DayVO(
      maxtempC: fields[0] as double?,
      maxtempF: fields[1] as double?,
      mintempC: fields[2] as double?,
      mintempF: fields[3] as double?,
      avgtempC: fields[4] as double?,
      avgtempF: fields[5] as double?,
      maxwindMph: fields[6] as double?,
      maxwindKph: fields[7] as double?,
      totalprecipMm: fields[8] as double?,
      totalprecipIn: fields[9] as double?,
      totalsnowCm: fields[10] as double?,
      avgvisKm: fields[11] as double?,
      avgvisMiles: fields[12] as double?,
      avghumidity: fields[13] as double?,
      dailyWillItRain: fields[14] as int?,
      dailyChanceOfRain: fields[15] as int?,
      dailyWillItSnow: fields[16] as int?,
      dailyChanceOfSnow: fields[17] as int?,
      condition: fields[18] as ConditionVO?,
      uv: fields[19] as double?,
    );
  }

  @override
  void write(BinaryWriter writer, DayVO obj) {
    writer
      ..writeByte(20)
      ..writeByte(0)
      ..write(obj.maxtempC)
      ..writeByte(1)
      ..write(obj.maxtempF)
      ..writeByte(2)
      ..write(obj.mintempC)
      ..writeByte(3)
      ..write(obj.mintempF)
      ..writeByte(4)
      ..write(obj.avgtempC)
      ..writeByte(5)
      ..write(obj.avgtempF)
      ..writeByte(6)
      ..write(obj.maxwindMph)
      ..writeByte(7)
      ..write(obj.maxwindKph)
      ..writeByte(8)
      ..write(obj.totalprecipMm)
      ..writeByte(9)
      ..write(obj.totalprecipIn)
      ..writeByte(10)
      ..write(obj.totalsnowCm)
      ..writeByte(11)
      ..write(obj.avgvisKm)
      ..writeByte(12)
      ..write(obj.avgvisMiles)
      ..writeByte(13)
      ..write(obj.avghumidity)
      ..writeByte(14)
      ..write(obj.dailyWillItRain)
      ..writeByte(15)
      ..write(obj.dailyChanceOfRain)
      ..writeByte(16)
      ..write(obj.dailyWillItSnow)
      ..writeByte(17)
      ..write(obj.dailyChanceOfSnow)
      ..writeByte(18)
      ..write(obj.condition)
      ..writeByte(19)
      ..write(obj.uv);
  }

  @override
  int get hashCode => typeId.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is DayVOAdapter &&
          runtimeType == other.runtimeType &&
          typeId == other.typeId;
}

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

DayVO _$DayVOFromJson(Map<String, dynamic> json) => DayVO(
      maxtempC: (json['maxtemp_c'] as num?)?.toDouble(),
      maxtempF: (json['maxtemp_f'] as num?)?.toDouble(),
      mintempC: (json['mintemp_c'] as num?)?.toDouble(),
      mintempF: (json['mintemp_f'] as num?)?.toDouble(),
      avgtempC: (json['avgtemp_c'] as num?)?.toDouble(),
      avgtempF: (json['avgtemp_f'] as num?)?.toDouble(),
      maxwindMph: (json['maxwind_mph'] as num?)?.toDouble(),
      maxwindKph: (json['maxwind_kph'] as num?)?.toDouble(),
      totalprecipMm: (json['totalprecip_mm'] as num?)?.toDouble(),
      totalprecipIn: (json['totalprecip_in'] as num?)?.toDouble(),
      totalsnowCm: (json['totalsnow_cm'] as num?)?.toDouble(),
      avgvisKm: (json['avgvis_km'] as num?)?.toDouble(),
      avgvisMiles: (json['avgvis_miles'] as num?)?.toDouble(),
      avghumidity: (json['avghumidity'] as num?)?.toDouble(),
      dailyWillItRain: json['daily_will_it_rain'] as int?,
      dailyChanceOfRain: json['daily_chance_of_rain'] as int?,
      dailyWillItSnow: json['daily_will_it_snow'] as int?,
      dailyChanceOfSnow: json['daily_chance_of_snow'] as int?,
      condition: json['condition'] == null
          ? null
          : ConditionVO.fromJson(json['condition'] as Map<String, dynamic>),
      uv: (json['uv'] as num?)?.toDouble(),
    );

Map<String, dynamic> _$DayVOToJson(DayVO instance) => <String, dynamic>{
      'maxtemp_c': instance.maxtempC,
      'maxtemp_f': instance.maxtempF,
      'mintemp_c': instance.mintempC,
      'mintemp_f': instance.mintempF,
      'avgtemp_c': instance.avgtempC,
      'avgtemp_f': instance.avgtempF,
      'maxwind_mph': instance.maxwindMph,
      'maxwind_kph': instance.maxwindKph,
      'totalprecip_mm': instance.totalprecipMm,
      'totalprecip_in': instance.totalprecipIn,
      'totalsnow_cm': instance.totalsnowCm,
      'avgvis_km': instance.avgvisKm,
      'avgvis_miles': instance.avgvisMiles,
      'avghumidity': instance.avghumidity,
      'daily_will_it_rain': instance.dailyWillItRain,
      'daily_chance_of_rain': instance.dailyChanceOfRain,
      'daily_will_it_snow': instance.dailyWillItSnow,
      'daily_chance_of_snow': instance.dailyChanceOfSnow,
      'condition': instance.condition,
      'uv': instance.uv,
    };
