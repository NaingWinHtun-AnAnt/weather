// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'condition_vo.dart';

// **************************************************************************
// TypeAdapterGenerator
// **************************************************************************

class ConditionVOAdapter extends TypeAdapter<ConditionVO> {
  @override
  final int typeId = 5;

  @override
  ConditionVO read(BinaryReader reader) {
    final numOfFields = reader.readByte();
    final fields = <int, dynamic>{
      for (int i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return ConditionVO(
      text: fields[0] as String?,
      icon: fields[1] as String?,
      code: fields[2] as int?,
    );
  }

  @override
  void write(BinaryWriter writer, ConditionVO obj) {
    writer
      ..writeByte(3)
      ..writeByte(0)
      ..write(obj.text)
      ..writeByte(1)
      ..write(obj.icon)
      ..writeByte(2)
      ..write(obj.code);
  }

  @override
  int get hashCode => typeId.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is ConditionVOAdapter &&
          runtimeType == other.runtimeType &&
          typeId == other.typeId;
}

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

ConditionVO _$ConditionVOFromJson(Map<String, dynamic> json) => ConditionVO(
      text: json['text'] as String?,
      icon: json['icon'] as String?,
      code: json['code'] as int?,
    );

Map<String, dynamic> _$ConditionVOToJson(ConditionVO instance) =>
    <String, dynamic>{
      'text': instance.text,
      'icon': instance.icon,
      'code': instance.code,
    };
