import 'package:flutter/material.dart';
import 'package:ui/resources/colors.dart';
import 'package:ui/resources/dimens.dart';

class TitleTextView extends StatelessWidget {
  const TitleTextView({
    super.key,
    required this.text,
  });

  final String text;

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: const TextStyle(
        fontSize: textRegular2,
        fontWeight: FontWeight.w500,
        color: colorWhite,
      ),
    );
  }
}
