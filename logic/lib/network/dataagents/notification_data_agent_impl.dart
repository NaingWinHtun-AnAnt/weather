import 'package:dio/dio.dart';
import 'package:logic/network/api_constants.dart';
import 'package:logic/network/dataagents/notification_data_agent.dart';
import 'package:logic/network/requests/send_notification_request.dart';
import 'package:logic/network/responses/send_notification_response.dart';
import 'package:logic/network/the_firebase_api.dart';

class NotificationDataAgentImpl extends NotificationDataAgent {
  /// api
  TheFirebaseApi? mApi;

  static final NotificationDataAgentImpl _singleton =
      NotificationDataAgentImpl._internal();

  factory NotificationDataAgentImpl() => _singleton;

  NotificationDataAgentImpl._internal() {
    final dio = Dio();
    dio.options = BaseOptions(headers: {
      paramAuthorization: valueAuthorization,
      paramContentType: valueContentType,
      paramAcceptEncoding: valueAcceptEncoding,
      paramConnection: valueConnection,
    });
    mApi = TheFirebaseApi(dio);
  }

  /// send notification
  @override
  Future<SendNotificationResponse?>? sendNotification(
      SendNotificationRequest notificationRequest) {
    return mApi
        ?.sendNotification(notificationRequest)
        .asStream()
        .map((event) => event)
        .first;
  }
}
