import 'package:flutter/material.dart';
import 'package:logic/data/vos/forecast_day_vo.dart';
import 'package:ui/resources/colors.dart';
import 'package:ui/resources/dimens.dart';
import 'package:ui/resources/strings.dart';
import 'package:ui/widgets/additional_conditional_section_view.dart';
import 'package:ui/widgets/condition_text_view.dart';
import 'package:ui/widgets/header_text_view.dart';
import 'package:ui/widgets/temperature_text_view.dart';

class ForecastWeatherView extends StatelessWidget {
  final String image;
  final ForecastDayVO? forecast;
  final String windImage;
  final String humidityImage;
  final String chanceOfRainImage;

  const ForecastWeatherView({
    super.key,
    required this.image,
    required this.forecast,
    required this.windImage,
    required this.humidityImage,
    required this.chanceOfRainImage,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        HeaderTextView(
          text: forecast?.getFormattedDate() ?? todayReport,
        ),
        const SizedBox(
          height: marginMedium2,
        ),
        Image.asset(
          image,
          width: MediaQuery.of(context).size.width * 0.25,
          fit: BoxFit.cover,
        ),
        const SizedBox(
          height: marginMedium2,
        ),
        ConditionTextView(
          text: "It's ${forecast?.day?.condition?.text ?? ""}",
        ),
        const SizedBox(
          height: marginMedium2,
        ),
        TemperatureTextView(
          tempC: "${forecast?.day?.maxtempC}",
        ),
        const SizedBox(
          height: marginLarge,
        ),
        AdditionalConditionalSectionView(
          image: image,
          windKph: "${forecast?.day?.maxwindKph}",
          humidity: "${forecast?.day?.avghumidity}",
          chanceOfRain: "${forecast?.day?.dailyChanceOfRain}",
          windImage: windImage,
          humidityImage: humidityImage,
          chanceOfRainImage: chanceOfRainImage,
        ),
        const SizedBox(
          height: marginMedium2,
        ),
        const Padding(
          padding: EdgeInsets.symmetric(
            horizontal: marginXXLarge,
          ),
          child: Divider(
            color: colorWhite,
          ),
        ),
      ],
    );
  }
}
