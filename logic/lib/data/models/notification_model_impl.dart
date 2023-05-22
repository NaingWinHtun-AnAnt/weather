import 'package:logic/data/models/notification_model.dart';
import 'package:logic/network/api_constants.dart';
import 'package:logic/network/dataagents/notification_data_agent.dart';
import 'package:logic/network/dataagents/notification_data_agent_impl.dart';
import 'package:logic/network/requests/data_request.dart';
import 'package:logic/network/requests/notification_request.dart';
import 'package:logic/network/requests/send_notification_request.dart';
import 'package:logic/network/responses/send_notification_response.dart';

class NotificationModelImpl extends NotificationModel {
  static final NotificationModelImpl _singleton =
      NotificationModelImpl._internal();

  factory NotificationModelImpl() => _singleton;

  NotificationModelImpl._internal();

  /// data agent
  final NotificationDataAgent _dataAgent = NotificationDataAgentImpl();

  /// send notification
  @override
  Future<SendNotificationResponse?> sendNotification({
    required String title,
    required String body,
  }) {
    return _craftNotification(title: title, body: body)
        .then((value) => _dataAgent.sendNotification(value));
  }

  Future<SendNotificationRequest> _craftNotification(
          {required String title, required String body}) =>
      Future.value(SendNotificationRequest(
        registrationIds: [
          "echyRyGER0S3yifE806IQb:APA91bGIpUELkXtdoJ0RQzZ6jSC7rKBEF0MeKtPQCXdSN5IMaoiW_BRju_ZqN5wOx6xm1DpI0DNIBtAr2dB8EIJ-v-1y25OlsGqihmuGp_wa9tqyedzHpHbIZVmW5UUm69lJUB6l7VID"
        ],
        notification: NotificationRequest(
          title: title,
          body: body,
          contentAvailable: true,
          priority: priority,
        ),
        dataRequest: DataRequest(
          title: title,
          body: body,
          data: "weather app notification",
          priority: priority,
          contentAvailable: true,
        ),
      ));
}
