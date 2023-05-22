import 'package:flutter/material.dart';
import 'package:ui/resources/colors.dart';
import 'package:ui/resources/dimens.dart';

class EmptyView extends StatelessWidget {
  final bool isVisible;
  final String image;
  final String errorText;

  const EmptyView({
    super.key,
    required this.isVisible,
    required this.image,
    required this.errorText,
  });

  @override
  Widget build(BuildContext context) {
    return Visibility(
      visible: isVisible,
      child: Column(
        children: [
          SizedBox(
            height: MediaQuery.of(context).size.height * 0.2,
          ),
          Image.asset(
            image,
            width: MediaQuery.of(context).size.width * 0.2,
          ),
          const SizedBox(
            height: marginMedium3,
          ),
          Text(
            errorText,
            textAlign: TextAlign.center,
            style: const TextStyle(
              color: colorWhite,
              fontSize: textRegular3,
              fontWeight: FontWeight.w500,
            ),
          ),
        ],
      ),
    );
  }
}
