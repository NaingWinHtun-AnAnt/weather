import 'package:flutter/foundation.dart';
import 'package:logic/data/models/notification_model.dart';
import 'package:logic/data/models/notification_model_impl.dart';
import 'package:logic/extensions/export_extensions.dart';

class AdminHomeBloc extends ChangeNotifier {
  /// bloc controls
  bool _isDispose = false;

  /// page control
  bool isLoading = false;

  /// state
  String? title;
  String? body;

  /// model
  final NotificationModel _mNotificationModel = NotificationModelImpl();

  /// change title
  void onChangeNotificationTitle({required String value}) {
    title = value;
  }

  /// change body
  void onChangeNotificationBody({required String value}) {
    body = value;
  }

  /// send notification
  void sendNotification() {
    if (title.isNotNullOrEmpty() && body.isNotNullOrEmpty()) {
      showLoading();
      _mNotificationModel
          .sendNotification(
              title: title ?? "This is title.", body: body ?? "This is body.")
          .whenComplete(() => hideLoading());
    }
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
