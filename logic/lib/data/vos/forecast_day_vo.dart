import 'package:hive/hive.dart';
import 'package:intl/intl.dart';
import 'package:json_annotation/json_annotation.dart';
import 'package:logic/data/vos/astro_vo.dart';
import 'package:logic/data/vos/day_vo.dart';
import 'package:logic/data/vos/hour_vo.dart';
import 'package:logic/resources/hive_constants.dart';

part 'forecast_day_vo.g.dart';

@JsonSerializable()
@HiveType(typeId: hiveTypeIdForecastDayVO, adapterName: "ForecastDayVOAdapter")
class ForecastDayVO {
  @JsonKey(name: "date")
  @HiveField(0)
  String? date;

  @JsonKey(name: "date_epoch")
  @HiveField(1)
  int? dateEpoch;

  @JsonKey(name: "day")
  @HiveField(2)
  DayVO? day;

  @JsonKey(name: "astro")
  @HiveField(3)
  AstroVO? astro;

  @JsonKey(name: "hour")
  @HiveField(4)
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

  String getFormattedDate() => DateFormat("MMM dd, yyyy")
      .format(DateTime.parse(date ?? "${DateTime.now()}"));
}
