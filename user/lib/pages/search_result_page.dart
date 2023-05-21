import 'package:flutter/material.dart';
import 'package:logic/export_logic.dart';
import 'package:provider/provider.dart';
import 'package:ui/export_ui.dart';
import 'package:user/pages/detail_page.dart';
import 'package:user/pages/favorite_page.dart';

class SearchResultPage extends StatelessWidget {
  final String city;

  const SearchResultPage({
    Key? key,
    required this.city,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (BuildContext context) => SearchResultBloc(),
      child: Scaffold(
        appBar: AppBar(
          elevation: constantZero,
          centerTitle: true,
          title: TitleTextView(text: city),
        ),
        body: CityListView(
          onTap: () => navigateToNextPage(
            context: context,
            nextPage: DetailPage(
              city: city,
            ),
          ),
          onTapSave: () => navigateToNextPage(
            context: context,
            nextPage: const FavoritePage(),
          ),
        ),
      ),
    );
  }
}
