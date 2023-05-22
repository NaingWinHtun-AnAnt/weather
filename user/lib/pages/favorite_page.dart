import 'package:flutter/material.dart';
import 'package:logic/blocs/favorite_bloc.dart';
import 'package:logic/extensions/widget_extensions.dart';
import 'package:provider/provider.dart';
import 'package:ui/resources/strings.dart';
import 'package:ui/widgets/city_list_view.dart';
import 'package:ui/widgets/empty_view.dart';
import 'package:ui/widgets/title_text_view.dart';
import 'package:user/pages/detail_page.dart';
import 'package:user/resources/image_constants.dart';

class FavoritePage extends StatelessWidget {
  const FavoritePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (BuildContext context) => FavoriteBloc(),
      child: Scaffold(
        appBar: AppBar(
          centerTitle: true,
          title: const TitleTextView(
            text: favorite,
          ),
        ),
        body: Consumer(
          builder: (BuildContext context, FavoriteBloc bloc, Widget? child) =>
              Stack(
            children: [
              Align(
                alignment: Alignment.center,
                child: EmptyView(
                  isVisible: bloc.favoriteCityList.isEmpty,
                  image: cloudyImage,
                  errorText: "Save City will be list here.",
                ),
              ),
              CityListView(
                cityList: bloc.favoriteCityList,
                onTap: (city) => navigateToNextPage(
                  context: context,
                  nextPage: DetailPage(
                    city: city.name ?? "",
                    cityId: city.id,
                  ),
                ),
                onTapSave: (cityId) => bloc.deleteFavorite(cityId: cityId),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
