import 'package:flutter/foundation.dart';
import 'package:logic/data/models/weather_model.dart';
import 'package:logic/data/models/weather_model_impl.dart';
import 'package:logic/data/vos/weather_forecast_vo.dart';
import 'package:logic/data/vos/weather_vo.dart';

class DetailBloc extends ChangeNotifier {
  /// bloc controls
  bool _isDispose = false;

  /// page control
  bool isLoading = false;

  /// model
  final WeatherModel _mWeatherModel = WeatherModelImpl();

  /// states
  WeatherVO? currentWeather;
  WeatherForecastVO? weatherForecast;

  DetailBloc({
    required String city,
    required int cityId,
  }) {
    /// get current weather
    _mWeatherModel
        .getWeatherDetailFromDatabase(keyword: city, cityId: cityId)
        .listen((value) {
      currentWeather = value;
      _notifySafely();
    });

    /// get forecast weather
    _mWeatherModel
        .getWeatherForecastFromDatabase(keyword: city, cityId: cityId)
        .listen((value) {
      weatherForecast = value;
      _notifySafely();
    });
  }

  /// show loading
  void showLoading() {
    isLoading = true;
    _notifySafely();
  }

  /// hide loading
  void hideLoading() {
    isLoading = false;
    _notifySafely();
  }

  void _notifySafely() {
    if (!_isDispose) notifyListeners();
  }

  @override
  void dispose() {
    super.dispose();
    _isDispose = true;
  }
}
