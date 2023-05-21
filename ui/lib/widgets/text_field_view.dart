import 'package:flutter/material.dart';
import 'package:ui/resources/colors.dart';
import 'package:ui/resources/dimens.dart';
import 'package:ui/widgets/title_text_view.dart';

class TextFieldView extends StatelessWidget {
  final String title;
  final String hint;
  final Function(String) onChange;

  const TextFieldView({
    super.key,
    required this.title,
    required this.hint,
    required this.onChange,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        TitleTextView(
          text: title,
        ),
        const SizedBox(
          height: marginMedium,
        ),
        TextField(
          onChanged: (value) => onChange(value),
          decoration: InputDecoration(
            hintText: hint,
            border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(radiusMedium),
            ),
            focusColor: Colors.transparent,
            filled: true,
            fillColor: colorWhite,
          ),
        ),
      ],
    );
  }
}
