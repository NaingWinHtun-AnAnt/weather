import 'package:logic/network/responses/send_notification_response.dart';

abstract class NotificationModel {
  /// send notification
  Future<SendNotificationResponse?> sendNotification({
    required String title,
    required String body,
  });
}
