import 'package:logic/data/models/weather_model.dart';
import 'package:logic/data/vos/city_vo.dart';
import 'package:logic/data/vos/weather_forecast_vo.dart';
import 'package:logic/data/vos/weather_vo.dart';
import 'package:logic/network/dataagents/data_agent.dart';
import 'package:logic/network/dataagents/retrofit_data_agent.dart';
import 'package:logic/persistence/city_dao.dart';
import 'package:logic/persistence/weather_dao.dart';
import 'package:logic/persistence/weather_forecast_dao.dart';
import 'package:stream_transform/stream_transform.dart';

class WeatherModelImpl extends WeatherModel {
  static final WeatherModelImpl _singleton = WeatherModelImpl._internal();

  factory WeatherModelImpl() => _singleton;

  WeatherModelImpl._internal();

  /// data agent
  final DataAgent _mDataAgent = RetrofitDataAgentImpl();

  /// daos
  final CityDao _mCityDao = CityDao();
  final WeatherDao _mWeatherDao = WeatherDao();
  final WeatherForecastDao _mWeatherForecastDao = WeatherForecastDao();

  /// from network
  @override
  Future<List<CityVO>> searchCity({
    required String keyword,
  }) =>
      _mDataAgent.searchCity(keyword: keyword);

  @override
  void getWeatherDetail({
    required String keyword,
    required int cityId,
  }) {
    _mDataAgent.getWeatherDetail(keyword: keyword).then(
        (value) => _mWeatherDao.saveWeather(weather: value, cityId: cityId));
  }

  @override
  void getWeatherForecast({
    required String keyword,
    required int cityId,
  }) {
    _mDataAgent.getWeatherForecast(keyword: keyword).then((value) =>
        _mWeatherForecastDao.saveWeatherForecast(
            weatherForecast: value, cityId: cityId));
  }

  /// from database
  @override
  void saveCity({required CityVO? city}) {
    _mCityDao.saveCity(city: city);
  }

  @override
  Stream<List<CityVO>> getCityFromDatabase() {
    return _mCityDao
        .getStreamEvent()
        .startWith(_mCityDao.getCityListStream())
        .map((event) => _mCityDao.getCityList());
  }

  @override
  void deleteCity({required int cityId}) {
    _mCityDao.deleteCity(cityId: cityId);
  }

  @override
  Stream<WeatherVO?> getWeatherDetailFromDatabase({
    required String keyword,
    required int cityId,
  }) {
    getWeatherDetail(keyword: keyword, cityId: cityId);
    return _mWeatherDao
        .getStreamEvent()
        .startWith(_mWeatherDao.getWeatherStream(cityId: cityId))
        .map((event) => _mWeatherDao.getWeather(cityId: cityId));
  }

  @override
  Stream<WeatherForecastVO?> getWeatherForecastFromDatabase({
    required String keyword,
    required int cityId,
  }) {
    getWeatherForecast(keyword: keyword, cityId: cityId);
    return _mWeatherForecastDao
        .getStreamEvent()
        .startWith(
            _mWeatherForecastDao.getWeatherForecastStream(cityId: cityId))
        .map(
            (event) => _mWeatherForecastDao.getWeatherForecast(cityId: cityId));
  }
}
