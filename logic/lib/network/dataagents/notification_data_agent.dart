import 'package:logic/network/requests/send_notification_request.dart';
import 'package:logic/network/responses/send_notification_response.dart';

abstract class NotificationDataAgent {
  /// send notification
  Future<SendNotificationResponse?>? sendNotification(
    SendNotificationRequest notificationRequest,
  );
}
