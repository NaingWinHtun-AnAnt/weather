import 'package:flutter/foundation.dart';
import 'package:logic/data/models/weather_model.dart';
import 'package:logic/data/models/weather_model_impl.dart';
import 'package:logic/data/vos/city_vo.dart';

class SearchResultBloc extends ChangeNotifier {
  /// bloc controls
  bool _isDispose = false;

  /// page control
  bool isLoading = false;

  /// model
  final WeatherModel _mWeatherModel = WeatherModelImpl();

  /// states
  List<CityVO> cityList = [];

  SearchResultBloc({required String city}) {
    _mWeatherModel.searchCity(keyword: city).then((value) {
      cityList = value;
      _mWeatherModel.getCityFromDatabase().listen((event) {
        event.map((favorite) {
          cityList.map((city) {
            if (favorite.id == city.id) {
              city.isSave = favorite.isSave;
            }
            return city;
          }).toList();
          return favorite;
        }).toList();
      });
      _notifySafely();
    });
  }

  /// save favorite city
  void saveCity({required int cityId}) {
    cityList.map((e) {
      if (e.id == cityId) {
        e.isSave = !e.isSave;
        _mWeatherModel.saveCity(city: e);
      }
      return e;
    }).toList();
    _notifySafely();
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
