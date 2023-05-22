// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'data_request.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

DataRequest _$DataRequestFromJson(Map<String, dynamic> json) => DataRequest(
      title: json['title'] as String,
      body: json['body'] as String,
      priority: json['priority'] as String? ?? "high",
      contentAvailable: json['content_available'] as bool? ?? true,
      data: json['data'] as String,
    );

Map<String, dynamic> _$DataRequestToJson(DataRequest instance) =>
    <String, dynamic>{
      'title': instance.title,
      'body': instance.body,
      'priority': instance.priority,
      'content_available': instance.contentAvailable,
      'data': instance.data,
    };
