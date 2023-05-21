import 'package:flutter/material.dart';
import 'package:ui/resources/colors.dart';
import 'package:ui/resources/dimens.dart';

class ButtonView extends StatelessWidget {
  final String text;
  final IconData icon;
  final Function onTap;
  final EdgeInsetsGeometry? margin;

  const ButtonView({
    super.key,
    required this.text,
    required this.icon,
    required this.onTap,
    this.margin,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => onTap(),
      child: Container(
        margin: margin,
        padding: const EdgeInsets.symmetric(
          horizontal: marginMedium2,
          vertical: marginMedium,
        ),
        decoration: BoxDecoration(
          color: colorAccent,
          borderRadius: BorderRadius.circular(
            radiusLarge,
          ),
        ),
        child: Row(
          mainAxisSize: MainAxisSize.min,
          children: [
            Text(
              text,
              style: const TextStyle(
                fontSize: textRegular2,
                fontWeight: FontWeight.w600,
                color: colorWhite,
              ),
            ),
            const SizedBox(
              width: marginMedium2,
            ),
            Icon(
              icon,
              color: colorWhite,
            ),
          ],
        ),
      ),
    );
  }
}
