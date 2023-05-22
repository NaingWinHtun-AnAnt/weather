import 'package:flutter/material.dart';
import 'package:ui/resources/colors.dart';
import 'package:ui/resources/dimens.dart';

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
