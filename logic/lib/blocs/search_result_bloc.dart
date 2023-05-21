import 'package:flutter/foundation.dart';
import 'package:logic/data/models/weather_model.dart';
import 'package:logic/data/models/weather_model_impl.dart';

class SearchResultBloc extends ChangeNotifier {
  /// bloc controls
  bool _isDispose = false;

  /// page control
  bool isLoading = false;

  /// model
  final WeatherModel _mWeatherModel = WeatherModelImpl();

  SearchResultBloc() {
    _mWeatherModel
        .searchCity(keyword: "yangon")
        .then((value) => print(">>>>>>> ${value.length}"));
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
