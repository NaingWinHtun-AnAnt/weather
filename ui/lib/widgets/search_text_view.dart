import 'package:flutter/material.dart';
import 'package:ui/resources/colors.dart';
import 'package:ui/resources/dimens.dart';
import 'package:ui/resources/strings.dart';

class SearchTextFieldView extends StatelessWidget {
  final Function(String) onChange;
  final Function(String) onSubmit;
  final Function() onForward;

  const SearchTextFieldView({
    super.key,
    required this.onChange,
    required this.onSubmit,
    required this.onForward,
  });

  @override
  Widget build(BuildContext context) {
    return TextField(
      onChanged: (value) => onChange(value),
      onSubmitted: (value) => onSubmit(value),
      decoration: InputDecoration(
        hintText: searchHint,
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(radiusLarge),
        ),
        focusColor: Colors.transparent,
        filled: true,
        fillColor: colorWhite,
        contentPadding: const EdgeInsets.only(
          top: marginSmall,
        ),
        prefixIcon: const Padding(
          padding: EdgeInsets.all(
            marginMedium,
          ),
          child: Icon(Icons.search),
        ),
        suffixIcon: GestureDetector(
          onTap: () => onForward(),
          child: const Padding(
            padding: EdgeInsets.all(
              marginMedium,
            ),
            child: Icon(
              Icons.arrow_forward_rounded,
            ),
          ),
        ),
      ),
    );
  }
}
