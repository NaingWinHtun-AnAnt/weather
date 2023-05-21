import 'package:flutter/material.dart';
import 'package:ui/resources/colors.dart';
import 'package:ui/resources/dimens.dart';
import 'package:ui/resources/strings.dart';

class WeatherView extends StatelessWidget {
  final String image;

  const WeatherView({
    super.key,
    required this.image,
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
        ),
        const SizedBox(
          height: marginMedium2,
        ),
        const ConditionTextView(
          text: "Its Cloudy",
        ),
        const SizedBox(
          height: marginMedium2,
        ),
        const TemperatureTextView(),
        const SizedBox(
          height: marginLarge,
        ),
        AdditionalConditionalSectionView(
          image: image,
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

class AdditionalConditionalSectionView extends StatelessWidget {
  final String image;

  const AdditionalConditionalSectionView({
    super.key,
    required this.image,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        ConditionView(image: image),
        ConditionView(image: image),
        ConditionView(image: image),
      ],
    );
  }
}

class ConditionView extends StatelessWidget {
  final String image;

  const ConditionView({
    super.key,
    required this.image,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Image.asset(
          image,
          width: MediaQuery.of(context).size.width * 0.12,
        ),
        const SizedBox(
          height: marginCardMedium2,
        ),
        const Text(
          "23km/h",
          style: TextStyle(
            fontWeight: FontWeight.w500,
            fontSize: textRegular2,
            color: colorWhite,
          ),
        ),
        const SizedBox(
          height: marginSmall,
        ),
        const Text(
          "Sun",
          style: TextStyle(
            fontWeight: FontWeight.w300,
            fontSize: textRegular,
            color: colorWhite,
          ),
        ),
      ],
    );
  }
}

class TemperatureTextView extends StatelessWidget {
  const TemperatureTextView({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const Text(
      "29\u00B0",
      style: TextStyle(
        fontWeight: FontWeight.bold,
        fontSize: textBigX,
        color: colorWhite,
      ),
    );
  }
}

class ConditionTextView extends StatelessWidget {
  final String text;

  const ConditionTextView({
    super.key,
    required this.text,
  });

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: const TextStyle(
        fontSize: textRegular3,
        color: colorWhite,
        fontWeight: FontWeight.w600,
      ),
    );
  }
}

class HeaderTextView extends StatelessWidget {
  final String text;

  const HeaderTextView({
    super.key,
    required this.text,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      margin: const EdgeInsets.all(
        marginMedium2,
      ),
      child: Text(
        text,
        textAlign: TextAlign.left,
        style: const TextStyle(
          fontSize: textRegular4,
          fontWeight: FontWeight.w600,
          color: colorWhite,
        ),
      ),
    );
  }
}
