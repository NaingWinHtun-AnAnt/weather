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
    required String id,
  }) {
    return _craftNotification(title: title, body: body, id: id)
        .then((value) => _dataAgent.sendNotification(value));
  }

  Future<SendNotificationRequest> _craftNotification({
    required String title,
    required String body,
    required String id,
  }) =>
      Future.value(SendNotificationRequest(
        registrationIds: [
          id,
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
