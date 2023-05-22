import 'package:hive/hive.dart';
import 'package:json_annotation/json_annotation.dart';
import 'package:logic/resources/hive_constants.dart';

part 'condition_vo.g.dart';

@JsonSerializable()
@HiveType(typeId: hiveTypeIdConditionVO, adapterName: "ConditionVOAdapter")
class ConditionVO {
  @JsonKey(name: "text")
  @HiveField(0)
  String? text;

  @JsonKey(name: "icon")
  @HiveField(1)
  String? icon;

  @JsonKey(name: "code")
  @HiveField(2)
  int? code;

  ConditionVO({
    this.text,
    this.icon,
    this.code,
  });

  factory ConditionVO.fromJson(Map<String, dynamic> json) =>
      _$ConditionVOFromJson(json);

  Map<String, dynamic> toJson() => _$ConditionVOToJson(this);

  String getImage() =>
      "assets/images${icon?.substring(icon?.lastIndexOf('/') ?? 0 + 1, icon?.lastIndexOf('.'))}.png";
}
