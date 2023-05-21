import 'package:json_annotation/json_annotation.dart';
import 'package:logic/data/vos/forecast_day_vo.dart';

part 'forecast_vo.g.dart';

@JsonSerializable()
class ForecastVO {
  @JsonKey(name: "forecastDay")
  List<ForecastDayVO>? forecastDay;

  ForecastVO({
    this.forecastDay,
  });

  factory ForecastVO.fromJson(Map<String, dynamic> json) =>
      _$ForecastVOFromJson(json);

  Map<String, dynamic> toJson() => _$ForecastVOToJson(this);
}
