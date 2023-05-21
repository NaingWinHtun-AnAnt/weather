import 'package:flutter/material.dart';
import 'package:ui/itemviews/city_view.dart';
import 'package:ui/resources/dimens.dart';

class CityListView extends StatelessWidget {
  final Function onTap;
  final Function onTapSave;

  const CityListView({
    super.key,
    required this.onTap,
    required this.onTapSave,
  });

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      padding: const EdgeInsets.only(
        bottom: marginCardMedium2,
      ),
      itemBuilder: (BuildContext context, int index) => CityView(
        onTap: () => onTap(),
        onTapSave: () => onTapSave(),
      ),
    );
  }
}
