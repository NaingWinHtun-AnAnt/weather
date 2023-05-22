import 'package:flutter/foundation.dart';
import 'package:logic/data/models/weather_model.dart';
import 'package:logic/data/models/weather_model_impl.dart';
import 'package:logic/data/vos/city_vo.dart';

class FavoriteBloc extends ChangeNotifier {
  /// bloc controls
  bool _isDispose = false;

  /// page control
  bool isLoading = false;

  /// model
  final WeatherModel _mWeatherModel = WeatherModelImpl();

  /// states
  List<CityVO> favoriteCityList = [];

  FavoriteBloc() {
    _mWeatherModel.getCityFromDatabase().listen((event) {
      favoriteCityList = event;
      _notifySafely();
    });
  }

  /// delete favorite
  void deleteFavorite({required int cityId}) {
    _mWeatherModel.deleteCity(cityId: cityId);
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
