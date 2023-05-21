import 'package:flutter/material.dart';
import 'package:ui/resources/colors.dart';
import 'package:ui/resources/dimens.dart';

class CityView extends StatelessWidget {
  final Function onTap;
  final Function onTapSave;

  const CityView({
    super.key,
    required this.onTap,
    required this.onTapSave,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => onTap(),
      child: Container(
        decoration: BoxDecoration(
          color: colorGrey,
          borderRadius: BorderRadius.circular(
            radiusMedium,
          ),
        ),
        margin: const EdgeInsets.only(
          top: marginCardMedium2,
          left: marginMedium2,
          right: marginMedium2,
        ),
        padding: const EdgeInsets.all(
          marginMedium,
        ),
        child: Row(
          children: [
            Expanded(
              flex: 2,
              child: ClipRRect(
                borderRadius: BorderRadius.circular(radiusMedium),
                child: Image.network(
                  "https://img.freepik.com/premium-photo/image-colorful-galaxy-sky-generative-ai_791316-9864.jpg?w=2000",
                  fit: BoxFit.cover,
                  height: MediaQuery.of(context).size.height * 0.1,
                ),
              ),
            ),
            Expanded(
              flex: 6,
              child: Container(
                margin: const EdgeInsets.symmetric(
                  horizontal: marginMedium,
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: const [
                    Text(
                      "London",
                      style: TextStyle(
                        fontSize: textRegular3,
                        fontWeight: FontWeight.w700,
                        color: colorWhite,
                      ),
                    ),
                    SizedBox(
                      height: marginMedium,
                    ),
                    Text(
                      "City of London, Greater London",
                      style: TextStyle(
                        fontSize: textRegular,
                        color: colorWhite,
                      ),
                    ),
                    SizedBox(
                      height: marginSmall,
                    ),
                    Text(
                      "United Kingdom",
                      style: TextStyle(
                        fontSize: textRegular,
                        fontWeight: FontWeight.w700,
                        color: colorWhite,
                      ),
                    ),
                  ],
                ),
              ),
            ),
            Expanded(
              flex: 1,
              child: GestureDetector(
                onTap: () => onTapSave(),
                child: const Icon(
                  Icons.bookmark_border_rounded,
                  color: colorWhite,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
