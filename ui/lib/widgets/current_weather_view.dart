import 'package:flutter/material.dart';
import 'package:logic/data/vos/weather_vo.dart';
import 'package:ui/resources/colors.dart';
import 'package:ui/resources/dimens.dart';
import 'package:ui/resources/strings.dart';
import 'package:ui/widgets/condition_text_view.dart';
import 'package:ui/widgets/condition_view.dart';
import 'package:ui/widgets/header_text_view.dart';
import 'package:ui/widgets/temperature_text_view.dart';

class CurrentWeatherView extends StatelessWidget {
  final String image;
  final String windImage;
  final String humidityImage;
  final String uvImage;
  final WeatherVO? weather;

  const CurrentWeatherView({
    super.key,
    required this.weather,
    required this.image,
    required this.windImage,
    required this.humidityImage,
    required this.uvImage,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const HeaderTextView(
          text: todayReport,
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
          text: "It's ${weather?.current?.condition?.text ?? ""}",
        ),
        const SizedBox(
          height: marginMedium2,
        ),
        TemperatureTextView(
          tempC: "${weather?.current?.tempC}",
        ),
        const SizedBox(
          height: marginLarge,
        ),
        CurrentConditionalSectionView(
          windImage: windImage,
          windKph: "${weather?.current?.windKph}",
          humidityImage: humidityImage,
          humidity: "${weather?.current?.humidity}",
          uvImage: uvImage,
          uv: "${weather?.current?.uv}",
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

class CurrentConditionalSectionView extends StatelessWidget {
  final String windKph;
  final String windImage;
  final String humidity;
  final String humidityImage;
  final String uv;
  final String uvImage;

  const CurrentConditionalSectionView({
    super.key,
    required this.windKph,
    required this.windImage,
    required this.humidity,
    required this.humidityImage,
    required this.uv,
    required this.uvImage,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        ConditionView(
          image: windImage,
          text: "$windKph km/h",
          label: wind,
        ),
        ConditionView(
          image: humidityImage,
          text: "$humidity%",
          label: humidityLabel,
        ),
        ConditionView(
          image: uvImage,
          text: "$uv%",
          label: uvLabel,
        ),
      ],
    );
  }
}
