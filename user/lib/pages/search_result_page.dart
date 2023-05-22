import 'package:flutter/material.dart';
import 'package:logic/export_logic.dart';
import 'package:provider/provider.dart';
import 'package:ui/export_ui.dart';
import 'package:user/pages/detail_page.dart';
import 'package:user/resources/image_constants.dart';

class SearchResultPage extends StatelessWidget {
  final String city;

  const SearchResultPage({
    Key? key,
    required this.city,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (BuildContext context) => SearchResultBloc(city: city),
      child: Scaffold(
        appBar: AppBar(
          elevation: constantZero,
          centerTitle: true,
          title: TitleTextView(text: city),
        ),
        body: Consumer(
          builder:
              (BuildContext context, SearchResultBloc bloc, Widget? child) =>
                  Stack(
            children: [
              Align(
                alignment: Alignment.center,
                child: EmptyView(
                  isVisible: bloc.cityList.isEmpty,
                  image: cloudyImage,
                  errorText: "No data found with your keyword!\n'$city'",
                ),
              ),
              CityListView(
                cityList: bloc.cityList,
                onTap: (city) => navigateToNextPage(
                  context: context,
                  nextPage: DetailPage(
                    city: city.name ?? "",
                    cityId: city.id,
                  ),
                ),
                onTapSave: (cityId) => bloc.saveCity(cityId: cityId),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
