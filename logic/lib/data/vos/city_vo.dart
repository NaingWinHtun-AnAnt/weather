import 'package:json_annotation/json_annotation.dart';

part 'city_vo.g.dart';

@JsonSerializable()
class CityVO {
  @JsonKey(name: "id")
  int id;

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

  @JsonKey(name: "url")
  String? url;

  CityVO({
    required this.id,
    this.name,
    this.region,
    this.country,
    this.lat,
    this.lon,
    this.url,
  });

  factory CityVO.fromJson(Map<String, dynamic> json) => _$CityVOFromJson(json);

  Map<String, dynamic> toJson() => _$CityVOToJson(this);
}
