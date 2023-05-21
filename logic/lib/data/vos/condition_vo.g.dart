// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'condition_vo.dart';

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
