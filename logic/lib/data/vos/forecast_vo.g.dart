// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'forecast_vo.dart';

// **************************************************************************
// TypeAdapterGenerator
// **************************************************************************

class ForecastVOAdapter extends TypeAdapter<ForecastVO> {
  @override
  final int typeId = 7;

  @override
  ForecastVO read(BinaryReader reader) {
    final numOfFields = reader.readByte();
    final fields = <int, dynamic>{
      for (int i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return ForecastVO(
      forecastDay: (fields[0] as List?)?.cast<ForecastDayVO>(),
    );
  }

  @override
  void write(BinaryWriter writer, ForecastVO obj) {
    writer
      ..writeByte(1)
      ..writeByte(0)
      ..write(obj.forecastDay);
  }

  @override
  int get hashCode => typeId.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is ForecastVOAdapter &&
          runtimeType == other.runtimeType &&
          typeId == other.typeId;
}

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

ForecastVO _$ForecastVOFromJson(Map<String, dynamic> json) => ForecastVO(
      forecastDay: (json['forecastday'] as List<dynamic>?)
          ?.map((e) => ForecastDayVO.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$ForecastVOToJson(ForecastVO instance) =>
    <String, dynamic>{
      'forecastday': instance.forecastDay,
    };
