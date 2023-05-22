import 'package:flutter/material.dart';
import 'package:ui/resources/colors.dart';
import 'package:ui/resources/dimens.dart';

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

