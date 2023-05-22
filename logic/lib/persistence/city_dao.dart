import 'package:hive_flutter/hive_flutter.dart';
import 'package:logic/data/vos/city_vo.dart';
import 'package:logic/resources/hive_constants.dart';

class CityDao {
  static final CityDao _singleton = CityDao._internal();

  factory CityDao() => _singleton;

  CityDao._internal();

  /// open quote hive box
  Box<CityVO> getCityBox() => Hive.box<CityVO>(boxNameCityVO);

  void clearBox() => getCityBox().clear();

  void saveCity({required CityVO? city}) async {
    if (city != null) {
      await getCityBox().putAll(
        {
          city.id: city,
        },
      );
    }
  }

  void deleteCity({required int cityId}) async {
    await getCityBox().delete(cityId);
  }

  List<CityVO> getCityList() => getCityBox().values.toList();

  /// reactive programming
  Stream<void> getStreamEvent() => getCityBox().watch();

  Stream<List<CityVO>> getCityListStream() => Stream.value(getCityList());
}
