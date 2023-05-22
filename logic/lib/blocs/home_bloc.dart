import 'package:flutter/foundation.dart';
import 'package:logic/fcm/fcm_service.dart';

class HomeBloc extends ChangeNotifier {
  /// bloc controls
  bool _isDispose = false;

  /// state
  String? city;
  String? token;

  HomeBloc() {
    FCMService().getFCMToken().then((value) {
      token = value;
      _notifySafely();
    });
  }

  void onChangeSearchKey({required String value}) {
    city = value;
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
