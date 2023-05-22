import 'package:flutter/material.dart';
import 'package:logic/data/vos/city_vo.dart';
import 'package:ui/itemviews/city_view.dart';
import 'package:ui/resources/dimens.dart';

class CityListView extends StatelessWidget {
  final List<CityVO> cityList;
  final Function(CityVO) onTap;
  final Function(int) onTapSave;

  const CityListView({
    super.key,
    required this.cityList,
    required this.onTap,
    required this.onTapSave,
  });

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      padding: const EdgeInsets.only(
        bottom: marginCardMedium2,
      ),
      itemCount: cityList.length,
      itemBuilder: (BuildContext context, int index) => CityView(
        city: cityList[index],
        onTap: () => onTap(cityList[index]),
        onTapSave: () => onTapSave(cityList[index].id),
      ),
    );
  }
}
