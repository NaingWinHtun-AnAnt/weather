import 'package:flutter/material.dart';
import 'package:ui/resources/dimens.dart';
import 'package:ui/resources/strings.dart';
import 'package:ui/widgets/button_view.dart';
import 'package:ui/widgets/text_field_view.dart';
import 'package:ui/widgets/title_text_view.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const TitleTextView(
          text: adminPanelTitle,
        ),
      ),
      body: Container(
        margin: const EdgeInsets.symmetric(
          horizontal: marginMedium2,
          vertical: marginXLarge,
        ),
        child: Column(
          children: [
            TextFieldView(
              title: notificationTitle,
              hint: hintNotificationTitle,
              onChange: (value) {},
            ),
            const SizedBox(
              height: marginMedium3,
            ),
            TextFieldView(
              title: notificationBody,
              hint: hintNotificationBody,
              onChange: (value) {},
            ),
            ButtonView(
              text: sendNotification,
              icon: Icons.send_rounded,
              onTap: () {},
              margin: const EdgeInsets.only(
                top: marginMedium3,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
