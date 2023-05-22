import 'package:flutter/material.dart';
import 'package:logic/export_logic.dart';
import 'package:logic/extensions/export_extensions.dart';
import 'package:provider/provider.dart';
import 'package:ui/resources/colors.dart';
import 'package:ui/resources/dimens.dart';
import 'package:ui/resources/strings.dart';
import 'package:ui/widgets/button_view.dart';
import 'package:ui/widgets/search_text_view.dart';
import 'package:user/pages/favorite_page.dart';
import 'package:user/pages/search_result_page.dart';
import 'package:user/resources/image_constants.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (BuildContext context) => HomeBloc(),
      child: Scaffold(
        body: Consumer(
          builder: (BuildContext context, HomeBloc bloc, Widget? child) =>
              Stack(
            alignment: Alignment.topRight,
            children: [
              SingleChildScrollView(
                child: Container(
                  padding: const EdgeInsets.symmetric(
                    horizontal: marginMedium2,
                    vertical: marginXLarge,
                  ),
                  height: MediaQuery.of(context).size.height,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Image.asset(
                        cloudyImage,
                        width: welcomeImageWidth,
                      ),
                      const SizedBox(
                        height: marginXXLarge,
                      ),
                      Container(
                        margin: const EdgeInsets.symmetric(
                          horizontal: marginMedium,
                        ),
                        child: const BigTitleTextView(),
                      ),
                      const SizedBox(
                        height: marginMedium2,
                      ),
                      Container(
                        margin: const EdgeInsets.symmetric(
                          horizontal: marginMedium2,
                        ),
                        child: const DescriptionTextView(),
                      ),
                      const SizedBox(
                        height: marginXXLarge,
                      ),
                      SearchTextFieldView(
                        onChange: (value) =>
                            bloc.onChangeSearchKey(value: value),
                        onSubmit: (value) => bloc.city.isNotNull()
                            ? navigateToNextPage(
                                context: context,
                                nextPage: SearchResultPage(
                                  city: bloc.city ?? "",
                                ),
                              )
                            : null,
                        onForward: () => bloc.city.isNotNullOrEmpty()
                            ? navigateToNextPage(
                                context: context,
                                nextPage: SearchResultPage(
                                  city: bloc.city ?? "",
                                ),
                              )
                            : null,
                      ),
                    ],
                  ),
                ),
              ),
              ButtonView(
                text: goToFavorite,
                icon: Icons.arrow_forward_rounded,
                onTap: () => navigateToNextPage(
                  context: context,
                  nextPage: const FavoritePage(),
                ),
                margin: const EdgeInsets.only(
                  top: marginXLarge,
                  right: marginMedium3,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class DescriptionTextView extends StatelessWidget {
  const DescriptionTextView({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const Text(
      greetingDescription,
      textAlign: TextAlign.center,
      style: TextStyle(
        color: colorWhite,
        fontSize: textRegular,
      ),
    );
  }
}

class BigTitleTextView extends StatelessWidget {
  const BigTitleTextView({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const Text(
      greetingTitle,
      textAlign: TextAlign.center,
      style: TextStyle(
        fontSize: textBig,
        fontWeight: FontWeight.w700,
        color: colorWhite,
      ),
    );
  }
}
