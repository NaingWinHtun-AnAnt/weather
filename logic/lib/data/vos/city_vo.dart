import 'package:hive/hive.dart';
import 'package:json_annotation/json_annotation.dart';
import 'package:logic/resources/hive_constants.dart';

part 'city_vo.g.dart';

@HiveType(typeId: hiveTypeIdCityVO, adapterName: "CityVOAdapter")
@JsonSerializable()
class CityVO {
  @JsonKey(name: "id")
  @HiveField(0)
  int id;

  @JsonKey(name: "name")
  @HiveField(1)
  String? name;

  @JsonKey(name: "region")
  @HiveField(2)
  String? region;

  @JsonKey(name: "country")
  @HiveField(3)
  String? country;

  @JsonKey(name: "lat")
  @HiveField(4)
  double? lat;

  @JsonKey(name: "lon")
  @HiveField(5)
  double? lon;

  @JsonKey(name: "url")
  @HiveField(6)
  String? url;

  @HiveField(7)
  bool isSave;

  CityVO({
    required this.id,
    this.name,
    this.region,
    this.country,
    this.lat,
    this.lon,
    this.url,
    this.isSave = false,
  });

  factory CityVO.fromJson(Map<String, dynamic> json) => _$CityVOFromJson(json);

  Map<String, dynamic> toJson() => _$CityVOToJson(this);
}
