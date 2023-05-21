import 'package:json_annotation/json_annotation.dart';

part 'location_vo.g.dart';

@JsonSerializable()
class LocationVO {
  @JsonKey(name: "name")
  String? name;

  @JsonKey(name: "region")
  String? region;

  @JsonKey(name: "country")
  String? country;

  @JsonKey(name: "lat")
  double? lat;

  @JsonKey(name: "lon")
  double? lon;

  @JsonKey(name: "tz_id")
  String? tzId;

  @JsonKey(name: "localtime_epoch")
  int? localtimeEpoch;

  @JsonKey(name: "localtime")
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
