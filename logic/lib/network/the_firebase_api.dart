import 'package:dio/dio.dart';
import 'package:logic/network/api_constants.dart';
import 'package:logic/network/requests/send_notification_request.dart';
import 'package:logic/network/responses/send_notification_response.dart';
import 'package:retrofit/http.dart';

part 'the_firebase_api.g.dart';

@RestApi(baseUrl: firebaseBaseUrl)
abstract class TheFirebaseApi {
  factory TheFirebaseApi(Dio dio) = _TheFirebaseApi;

  @POST(endPointNotificationSend)
  Future<SendNotificationResponse> sendNotification(
    @Body() SendNotificationRequest notificationRequest,
  );
}
