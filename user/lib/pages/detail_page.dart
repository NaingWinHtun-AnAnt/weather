import 'package:flutter/material.dart';
import 'package:logic/blocs/detail_bloc.dart';
import 'package:provider/provider.dart';
import 'package:ui/itemviews/forecast_weather_view.dart';
import 'package:ui/resources/dimens.dart';
import 'package:ui/widgets/current_weather_view.dart';
import 'package:ui/widgets/title_text_view.dart';
import 'package:user/resources/image_constants.dart';

class DetailPage extends StatelessWidget {
  final String city;
  final int cityId;

  const DetailPage({
    Key? key,
    required this.city,
    required this.cityId,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (BuildContext context) => DetailBloc(city: city, cityId: cityId),
      child: Scaffold(
        appBar: AppBar(
          centerTitle: true,
          title: TitleTextView(
            text: city,
          ),
        ),
        body: Consumer(
          builder: (BuildContext context, DetailBloc bloc, Widget? child) =>
              SingleChildScrollView(
            child: Column(
              children: [
                CurrentWeatherView(
                  windImage: windImage,
                  humidityImage: humidityImage,
                  uvImage: uvImage,
                  image: bloc.currentWeather?.current?.condition?.getImage() ??
                      cloudyImage,
                  weather: bloc.currentWeather,
                ),
                ListView.builder(
                  physics: const NeverScrollableScrollPhysics(),
                  shrinkWrap: true,
                  padding: const EdgeInsets.only(
                    top: marginMedium,
                  ),
                  itemCount:
                      bloc.weatherForecast?.forecast?.forecastDay?.length ?? 0,
                  itemBuilder: (BuildContext context, int index) =>
                      ForecastWeatherView(
                    windImage: windImage,
                    humidityImage: humidityImage,
                    chanceOfRainImage: chanceOfRainImage,
                    image:
                        bloc.weatherForecast?.current?.condition?.getImage() ??
                            cloudyImage,
                    forecast:
                        bloc.weatherForecast?.forecast?.forecastDay?[index],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
