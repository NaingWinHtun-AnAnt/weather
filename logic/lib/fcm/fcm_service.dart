import 'package:firebase_messaging/firebase_messaging.dart';
import 'package:flutter/material.dart';
import 'package:flutter_local_notifications/flutter_local_notifications.dart';

const channelId = "weather_notification_channel";
const channelName = "Weather Notification Channel";
const channelDescription = "Weather Notification Channel";

class FCMService {
  static final FCMService _singleton = FCMService._internal();

  factory FCMService() => _singleton;

  FCMService._internal();

  /// fcm instance
  final FirebaseMessaging _fcmMessaging = FirebaseMessaging.instance;

  /// notification channel
  final AndroidNotificationChannel _notificationChannel =
      const AndroidNotificationChannel(
    channelId,
    channelName,
    description: channelDescription,
    importance: Importance.high,
  );

  /// notification plugin instance
  final FlutterLocalNotificationsPlugin _notificationsPlugin =
      FlutterLocalNotificationsPlugin();

  /// foreground notification setting set up for ANDROID(flutter local notification)
  final AndroidInitializationSettings _androidInitializationSettings =
      const AndroidInitializationSettings('app_logo');

  /// listen fcm
  void listenForMessages() async {
    /// initialize local notification
    /// and register channel
    await initFlutterLocalNotification();
    await registerChannel();

    /// app is killed
    _fcmMessaging.getInitialMessage().then(
        (value) => debugPrint("APP IS KILLED >>> ${value?.data['data']}"));

    /// user tap on push notification and
    /// launch app
    /// app is in background
    FirebaseMessaging.onMessageOpenedApp.listen((event) {
      debugPrint("APP IS IN BACKGROUND >>> ${event.data['data']}");
    });

    /// firebase in active
    /// app is in foreground
    FirebaseMessaging.onMessage.listen((remoteMessage) {
      final RemoteNotification? notification = remoteMessage.notification;
      final AndroidNotification? androidNotification =
          remoteMessage.notification?.android;

      if (notification != null && androidNotification != null) {
        _notificationsPlugin.show(
          notification.hashCode,
          notification.title,
          notification.body,
          NotificationDetails(
            android: AndroidNotificationDetails(
              _notificationChannel.id,
              _notificationChannel.name,
              channelDescription: _notificationChannel.description,
              importance: Importance.max,
              icon: androidNotification.smallIcon,
            ),
          ),
          payload: remoteMessage.data.toString(),
        );
      }
    });
  }

  /// initialize local notification
  Future initFlutterLocalNotification() {
    final InitializationSettings initializationSettings =
        InitializationSettings(
      android: _androidInitializationSettings,
      iOS: null,
      macOS: null,
    );
    return _notificationsPlugin.initialize(
      initializationSettings,
      onDidReceiveNotificationResponse: (payload) {
        print(">>>>>>>>>>>>>>>>>>> $payload");
      },
    );
  }

  /// register notification channel
  Future? registerChannel() {
    return _notificationsPlugin
        .resolvePlatformSpecificImplementation<
            AndroidFlutterLocalNotificationsPlugin>()
        ?.createNotificationChannel(_notificationChannel);
  }

  /// get device token for notification
  Future<String?> getFCMToken() async => await _fcmMessaging.getToken();
}
