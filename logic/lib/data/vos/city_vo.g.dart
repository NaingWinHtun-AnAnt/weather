// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'city_vo.dart';

// **************************************************************************
// TypeAdapterGenerator
// **************************************************************************

class CityVOAdapter extends TypeAdapter<CityVO> {
  @override
  final int typeId = 0;

  @override
  CityVO read(BinaryReader reader) {
    final numOfFields = reader.readByte();
    final fields = <int, dynamic>{
      for (int i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return CityVO(
      id: fields[0] as int,
      name: fields[1] as String?,
      region: fields[2] as String?,
      country: fields[3] as String?,
      lat: fields[4] as double?,
      lon: fields[5] as double?,
      url: fields[6] as String?,
      isSave: fields[7] as bool,
    );
  }

  @override
  void write(BinaryWriter writer, CityVO obj) {
    writer
      ..writeByte(8)
      ..writeByte(0)
      ..write(obj.id)
      ..writeByte(1)
      ..write(obj.name)
      ..writeByte(2)
      ..write(obj.region)
      ..writeByte(3)
      ..write(obj.country)
      ..writeByte(4)
      ..write(obj.lat)
      ..writeByte(5)
      ..write(obj.lon)
      ..writeByte(6)
      ..write(obj.url)
      ..writeByte(7)
      ..write(obj.isSave);
  }

  @override
  int get hashCode => typeId.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is CityVOAdapter &&
          runtimeType == other.runtimeType &&
          typeId == other.typeId;
}

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

CityVO _$CityVOFromJson(Map<String, dynamic> json) => CityVO(
      id: json['id'] as int,
      name: json['name'] as String?,
      region: json['region'] as String?,
      country: json['country'] as String?,
      lat: (json['lat'] as num?)?.toDouble(),
      lon: (json['lon'] as num?)?.toDouble(),
      url: json['url'] as String?,
      isSave: json['isSave'] as bool? ?? false,
    );

Map<String, dynamic> _$CityVOToJson(CityVO instance) => <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'region': instance.region,
      'country': instance.country,
      'lat': instance.lat,
      'lon': instance.lon,
      'url': instance.url,
      'isSave': instance.isSave,
    };
