import 'package:flutter/material.dart';
import 'package:ui/resources/colors.dart';
import 'package:ui/resources/dimens.dart';

class ConditionView extends StatelessWidget {
  final String image;
  final String text;
  final String label;

  const ConditionView({
    super.key,
    required this.image,
    required this.text,
    required this.label,
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
        Text(
          text,
          style: const TextStyle(
            fontWeight: FontWeight.w500,
            fontSize: textRegular2,
            color: colorWhite,
          ),
        ),
        const SizedBox(
          height: marginSmall,
        ),
        Text(
          label,
          style: const TextStyle(
            fontWeight: FontWeight.w300,
            fontSize: textRegular,
            color: colorWhite,
          ),
        ),
      ],
    );
  }
}
