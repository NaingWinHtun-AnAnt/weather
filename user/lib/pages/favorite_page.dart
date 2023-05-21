import 'package:flutter/material.dart';
import 'package:logic/blocs/favourite_bloc.dart';
import 'package:logic/extensions/widget_extensions.dart';
import 'package:provider/provider.dart';
import 'package:ui/resources/strings.dart';
import 'package:ui/widgets/city_list_view.dart';
import 'package:ui/widgets/title_text_view.dart';
import 'package:user/pages/detail_page.dart';

class FavoritePage extends StatelessWidget {
  const FavoritePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (BuildContext context) => FavouriteBloc(),
      child: Scaffold(
        appBar: AppBar(
          centerTitle: true,
          title: const TitleTextView(
            text: favorite,
          ),
        ),
        body: Consumer(
          builder: (BuildContext context, FavouriteBloc bloc, Widget? child) =>
              CityListView(
            onTap: () => navigateToNextPage(
              context: context,
              nextPage: const DetailPage(
                city: 'Yangon',
              ),
            ),
            onTapSave: () => navigateToNextPage(
              context: context,
              nextPage: const FavoritePage(),
            ),
          ),
        ),
      ),
    );
  }
}
