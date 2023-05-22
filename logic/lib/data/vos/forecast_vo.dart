import 'package:hive/hive.dart';
import 'package:json_annotation/json_annotation.dart';
import 'package:logic/data/vos/forecast_day_vo.dart';
import 'package:logic/resources/hive_constants.dart';

part 'forecast_vo.g.dart';

@JsonSerializable()
@HiveType(typeId: hiveTypeIdForecastVO, adapterName: "ForecastVOAdapter")
class ForecastVO {
  @JsonKey(name: "forecastday")
  @HiveField(0)
  List<ForecastDayVO>? forecastDay;

  ForecastVO({
    this.forecastDay,
  });

  factory ForecastVO.fromJson(Map<String, dynamic> json) =>
      _$ForecastVOFromJson(json);

  Map<String, dynamic> toJson() => _$ForecastVOToJson(this);
}
