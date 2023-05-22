import 'package:flutter/material.dart';
import 'package:ui/resources/colors.dart';
import 'package:ui/resources/dimens.dart';

class TemperatureTextView extends StatelessWidget {
  final String? tempC;

  const TemperatureTextView({
    super.key,
    required this.tempC,
  });

  @override
  Widget build(BuildContext context) {
    return Text(
      "${tempC ?? "0"}\u00B0",
      style: const TextStyle(
        fontWeight: FontWeight.bold,
        fontSize: textBigX,
        color: colorWhite,
      ),
    );
  }
}
