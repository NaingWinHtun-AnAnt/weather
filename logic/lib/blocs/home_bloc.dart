import 'package:flutter/foundation.dart';

class HomeBloc extends ChangeNotifier {
  /// state
  String? city;

  void onChangeSearchKey({required String value}) {
    city = value;
  }
}
