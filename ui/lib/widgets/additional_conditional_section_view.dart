import 'package:flutter/material.dart';
import 'package:ui/resources/strings.dart';
import 'package:ui/widgets/condition_view.dart';

class AdditionalConditionalSectionView extends StatelessWidget {
  final String image;
  final String windKph;
  final String humidity;
  final String chanceOfRain;
  final String windImage;
  final String humidityImage;
  final String chanceOfRainImage;

  const AdditionalConditionalSectionView({
    super.key,
    required this.image,
    required this.windKph,
    required this.humidity,
    required this.chanceOfRain,
    required this.windImage,
    required this.humidityImage,
    required this.chanceOfRainImage,
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
          image: chanceOfRainImage,
          text: "$chanceOfRain%",
          label: chanceOfRainLabel,
        ),
      ],
    );
  }
}
