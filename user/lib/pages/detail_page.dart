import 'package:flutter/material.dart';
import 'package:ui/itemviews/weather_view.dart';
import 'package:ui/resources/dimens.dart';
import 'package:ui/widgets/title_text_view.dart';
import 'package:user/resources/image_constants.dart';

class DetailPage extends StatelessWidget {
  final String city;

  const DetailPage({
    Key? key,
    required this.city,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: TitleTextView(
          text: city,
        ),
        actions: [
          Container(
            margin: const EdgeInsets.only(
              right: marginMedium2,
            ),
            child: const Icon(
              Icons.bookmark_rounded,
            ),
          )
        ],
      ),
      body: ListView.builder(
        padding: const EdgeInsets.only(
          top: marginMedium,
        ),
        itemBuilder: (BuildContext context, int index) => const WeatherView(
          image: cloudyImage,
        ),
      ),
    );
  }
}
