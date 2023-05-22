// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'location_vo.dart';

// **************************************************************************
// TypeAdapterGenerator
// **************************************************************************

class LocationVOAdapter extends TypeAdapter<LocationVO> {
  @override
  final int typeId = 3;

  @override
  LocationVO read(BinaryReader reader) {
    final numOfFields = reader.readByte();
    final fields = <int, dynamic>{
      for (int i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return LocationVO(
      name: fields[0] as String?,
      region: fields[1] as String?,
      country: fields[2] as String?,
      lat: fields[3] as double?,
      lon: fields[4] as double?,
      tzId: fields[5] as String?,
      localtimeEpoch: fields[6] as int?,
      localtime: fields[7] as String?,
    );
  }

  @override
  void write(BinaryWriter writer, LocationVO obj) {
    writer
      ..writeByte(8)
      ..writeByte(0)
      ..write(obj.name)
      ..writeByte(1)
      ..write(obj.region)
      ..writeByte(2)
      ..write(obj.country)
      ..writeByte(3)
      ..write(obj.lat)
      ..writeByte(4)
      ..write(obj.lon)
      ..writeByte(5)
      ..write(obj.tzId)
      ..writeByte(6)
      ..write(obj.localtimeEpoch)
      ..writeByte(7)
      ..write(obj.localtime);
  }

  @override
  int get hashCode => typeId.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is LocationVOAdapter &&
          runtimeType == other.runtimeType &&
          typeId == other.typeId;
}

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

LocationVO _$LocationVOFromJson(Map<String, dynamic> json) => LocationVO(
      name: json['name'] as String?,
      region: json['region'] as String?,
      country: json['country'] as String?,
      lat: (json['lat'] as num?)?.toDouble(),
      lon: (json['lon'] as num?)?.toDouble(),
      tzId: json['tz_id'] as String?,
      localtimeEpoch: json['localtime_epoch'] as int?,
      localtime: json['localtime'] as String?,
    );

Map<String, dynamic> _$LocationVOToJson(LocationVO instance) =>
    <String, dynamic>{
      'name': instance.name,
      'region': instance.region,
      'country': instance.country,
      'lat': instance.lat,
      'lon': instance.lon,
      'tz_id': instance.tzId,
      'localtime_epoch': instance.localtimeEpoch,
      'localtime': instance.localtime,
    };
