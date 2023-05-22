import 'package:hive/hive.dart';
import 'package:json_annotation/json_annotation.dart';
import 'package:logic/resources/hive_constants.dart';

part 'location_vo.g.dart';

@JsonSerializable()
@HiveType(typeId: hiveTypeIdLocationVO, adapterName: "LocationVOAdapter")
class LocationVO {
  @JsonKey(name: "name")
  @HiveField(0)
  String? name;

  @JsonKey(name: "region")
  @HiveField(1)
  String? region;

  @JsonKey(name: "country")
  @HiveField(2)
  String? country;

  @JsonKey(name: "lat")
  @HiveField(3)
  double? lat;

  @JsonKey(name: "lon")
  @HiveField(4)
  double? lon;

  @JsonKey(name: "tz_id")
  @HiveField(5)
  String? tzId;

  @JsonKey(name: "localtime_epoch")
  @HiveField(6)
  int? localtimeEpoch;

  @JsonKey(name: "localtime")
  @HiveField(7)
  String? localtime;

  LocationVO({
    this.name,
    this.region,
    this.country,
    this.lat,
    this.lon,
    this.tzId,
    this.localtimeEpoch,
    this.localtime,
  });

  factory LocationVO.fromJson(Map<String, dynamic> json) =>
      _$LocationVOFromJson(json);

  Map<String, dynamic> toJson() => _$LocationVOToJson(this);
}
