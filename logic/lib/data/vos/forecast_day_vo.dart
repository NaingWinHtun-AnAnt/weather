import 'package:json_annotation/json_annotation.dart';
import 'package:logic/data/vos/astro_vo.dart';
import 'package:logic/data/vos/day_vo.dart';
import 'package:logic/data/vos/hour_vo.dart';

part 'forecast_day_vo.g.dart';

@JsonSerializable()
class ForecastDayVO {
  @JsonKey(name: "date")
  String? date;

  @JsonKey(name: "date_epoch")
  int? dateEpoch;

  @JsonKey(name: "day")
  DayVO? day;

  @JsonKey(name: "astro")
  AstroVO? astro;

  @JsonKey(name: "hour")
  List<HourVO>? hour;

  ForecastDayVO({
    this.date,
    this.dateEpoch,
    this.day,
    this.astro,
    this.hour,
  });

  factory ForecastDayVO.fromJson(Map<String, dynamic> json) =>
      _$ForecastDayVOFromJson(json);

  Map<String, dynamic> toJson() => _$ForecastDayVOToJson(this);
}
