import 'package:firebase_messaging/firebase_messaging.dart';
import 'package:flutter_local_notifications/flutter_local_notifications.dart';

class FCMService {
  final _firebaseMessaging = FirebaseMessaging.instance;

  final AndroidNotificationDetails _androidNotificationDetails =
      const AndroidNotificationDetails(
    "_id",
    "_name",
    channelDescription: "_description",
    importance: Importance.max,
    priority: Priority.max,
    enableVibration: true,
    enableLights: true,
    playSound: true,
    channelShowBadge: true,
    styleInformation: BigTextStyleInformation(''),
  );

  static const DarwinNotificationDetails _darwinNotificationDetails =
      DarwinNotificationDetails(
    presentSound: true,
    presentBadge: true,
    presentAlert: true,
  );

  Future<void> initNotification() async {
    _firebaseMessaging.requestPermission();
    final fcmToken = await _firebaseMessaging.getToken();
    print('Token : $fcmToken');
    FirebaseMessaging.onBackgroundMessage(handleBackgroundMessage);
    initForeground();
  }

  Future<void> handleMessage(RemoteMessage? message) async {
    if (message == null) return;

    print(
        "Foreground Message: Title: ${message.notification?.title}, Body: ${message.notification?.body}, Data: ${message.data}");

    // Display a notification when the app is in the foreground
    // You can customize this based on your message handling logic
    displayNotification(message);
  }

  Future<void> displayNotification(RemoteMessage message) async {
    // Initialize FlutterLocalNotificationsPlugin
    final notificationsPlugin = FlutterLocalNotificationsPlugin();

    // Show notification using FlutterLocalNotificationsPlugin
    NotificationDetails notificationDetails = NotificationDetails(
      android: _androidNotificationDetails,
      iOS: _darwinNotificationDetails,
    );

    // You can customize the notification title, body, and other properties based on the message
    final uniqueId = DateTime.now().millisecondsSinceEpoch ~/ 1000;
    await notificationsPlugin.show(
      uniqueId,
      message.notification?.title,
      message.notification?.body,
      notificationDetails,
      payload: " jsonEncode(message.data)",
    );
  }

  Future<void> initForeground() async {
    await FirebaseMessaging.instance
        .setForegroundNotificationPresentationOptions(
      alert: true,
      badge: true,
      sound: true,
    );

    FirebaseMessaging.instance.getInitialMessage().then(handleMessage);
    FirebaseMessaging.onMessage.listen(handleMessage);
    FirebaseMessaging.onMessageOpenedApp.listen(handleMessage);
  }

  Future<void> handleBackgroundMessage(RemoteMessage? message) async {
    print(
        "Background Message: Title: ${message?.notification?.title}, Body: ${message?.notification?.body}, Data: ${message?.data}");
  }
}



// import 'dart:convert';
// import 'dart:developer';

// import 'package:firebase_messaging/firebase_messaging.dart';
// import 'package:flutter/material.dart';


// class FCMServices {
//   static final FirebaseMessaging _messaging = FirebaseMessaging.instance;

//   ///return fcm token
//   static Future<String?> get getFCMToken async {
//     try {
//       return await _messaging.getToken();
//     } catch (e) {
//       return null;
//     }
//   }

//   /* static void checkNotificationPermission() async {
//     NotificationSettings settings = await _messaging.requestPermission(
//       alert: true,
//       announcement: false,
//       badge: true,
//       carPlay: false,
//       criticalAlert: false,
//       provisional: false,
//       sound: true,
//     );
//   }
//  */

// /* ----- Android 13 pemission --------------- */
//   static Future<void> requestNotificationPermissions() async {
//     final permissionStatus =
//         await Permission.notification.notificationRequest();
//     if (permissionStatus != null) {
//       checkForPermissions(permissionStatus: permissionStatus);
//     }
//   }

//   static Future<void> checkForPermissions(
//       {PermissionStatus? permissionStatus}) async {
//     final status =
//         permissionStatus ?? await Permission.notification.notificationStatus();
//     debugPrint("permission status $status");
//   }

// /* ---------------------------------------- */
//   /// listen for all app state notification from FCM !
//   static void listenForNotifications() async {
//     try {
//       await FirebaseMessaging.instance.subscribeToTopic("all");

//       /// Called when app in foreground state.
//       FirebaseMessaging.onMessage.listen(
//         (RemoteMessage message) {
//           Map<String, dynamic> messageData = jsonDecode(message.data['data']);
//           if (message.data.isNotEmpty && messageData["category"] == "OTHERS") {
//             _showCustomDialog(
//               title: message.notification?.title ?? "Notification title not found!",
//               message: message.notification?.body ?? "Notification body not found!",
//               screenPath: messageData["screenPath"],
//             );
//           }

//           ///updating notification count if app is in running state
//           debugPrint("body of notification ${message.data['data']}'");
//           NotificationsBinding().dependencies();

//           ///showing notification using local notification package
//           // LocalNotificationServices.showForegroundNotification(
//           //   title: message.notification?.title ?? "",
//           //   body: message.notification?.body == null
//           //       ? ""
//           //       : message.notification?.body ?? '',
//           //   payload: message.data,
//           // );
//           final controller = Get.find<NotificationsController>();
//           controller.unreadCount();
//         },
//       );

//       /// Called when app starts from background state not terminated.
//       FirebaseMessaging.onMessageOpenedApp.listen(
//         (RemoteMessage message) {
//           log('background: ${message.data['data']}');
//           Map<String, dynamic> messageData = jsonDecode(message.data['data']);
//           if (message.data.isNotEmpty && messageData["category"] == "OTHERS") {
//             _showCustomDialog(
//               title: message.notification?.title ?? "Notification title not found!",
//               message: message.notification?.body ?? "Notification body not found!",
//               screenPath: messageData["screenPath"],
//             );
//           }

//           final row = NotificationRow.fromMap(jsonDecode(message.data['data']));
//           //    debugPrint("notification row ${row.notificationInfo!.toMap()}");
//           fromTopBar = true;
//           NotificationNavigationHandler.handleRedirection(row);
//         },
//       );

//       /// Called when app starts from terminated state.
//       _messaging.getInitialMessage().then(
//         (RemoteMessage? message) {
//           if (message != null) {
//             log('terminated: ${message.data}');
//             final row =
//                 NotificationRow.fromMap(jsonDecode(message.data['data']));
//             final controller = Get.put(HomeController());
//             controller.row.value = row;
//           }
//         },
//       );
//     } catch (e) {
//       log(e.toString());
//     }
//   }

//   static void _showCustomDialog(
//       {String message = "Message", String title = "Demo Title", String? screenPath, }) {
//     // Assuming you have a CustomDialog.showDialog static method
//     CustomDialog.showDialog(
//       context: Get.context!,
//       blur: 7,
//       isAutoClose: true,
//       isButton: true,
//       onYesTitle: "Ok",
//       title: title,
//       content: message,
//       onClose: () {
//         Get.back();
//       },
//       onYes: () {
//         if (screenPath != null) {
//           QR.toName(screenPath.name);
//         } else {
//           Get.back();
//         }
//       },
//       barrierDismissible: true,
//     );
//   }
//   // static void _showCustomDialog(RemoteMessage message) {
//   //   // Check for any specific data you need from the message
//   //   // For example: if you need to show the dialog only for certain types of messages
//   //   if (message.data['showDialog'] == 'true') {
//   //     Get.dialog(AlertDialog(
//   //       title: Text(message.notification?.title ?? "Notification"),
//   //       content: Text(message.notification?.body ?? "You have a new notification."),
//   //       actions: [
//   //         TextButton(
//   //           onPressed: () => Get.back(),
//   //           child: const Text("Close"),
//   //         ),
//   //       ],
//   //     ));
//   //   }
//   // }
// }
