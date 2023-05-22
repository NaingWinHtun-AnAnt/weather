// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'forecast_day_vo.dart';

// **************************************************************************
// TypeAdapterGenerator
// **************************************************************************

class ForecastDayVOAdapter extends TypeAdapter<ForecastDayVO> {
  @override
  final int typeId = 8;

  @override
  ForecastDayVO read(BinaryReader reader) {
    final numOfFields = reader.readByte();
    final fields = <int, dynamic>{
      for (int i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return ForecastDayVO(
      date: fields[0] as String?,
      dateEpoch: fields[1] as int?,
      day: fields[2] as DayVO?,
      astro: fields[3] as AstroVO?,
      hour: (fields[4] as List?)?.cast<HourVO>(),
    );
  }

  @override
  void write(BinaryWriter writer, ForecastDayVO obj) {
    writer
      ..writeByte(5)
      ..writeByte(0)
      ..write(obj.date)
      ..writeByte(1)
      ..write(obj.dateEpoch)
      ..writeByte(2)
      ..write(obj.day)
      ..writeByte(3)
      ..write(obj.astro)
      ..writeByte(4)
      ..write(obj.hour);
  }

  @override
  int get hashCode => typeId.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is ForecastDayVOAdapter &&
          runtimeType == other.runtimeType &&
          typeId == other.typeId;
}

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
