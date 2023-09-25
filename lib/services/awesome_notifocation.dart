import 'package:awesome_notifications/awesome_notifications.dart';
import 'package:flutter/material.dart';
import 'package:flutterr_awesome_notification/HomePage.dart';
import 'package:flutterr_awesome_notification/main.dart';
import 'package:fluttertoast/fluttertoast.dart';

import '../screens/navscreenone.dart';
import '../screens/navscreentwo.dart';

navigatorHelper(ReceivedAction receivedAction) async {
  if (receivedAction.payload != null &&
      receivedAction.payload!['screen_name'] == "SUBSCRIBE") {
    SplashPAge.navigator.currentState!
        .push(MaterialPageRoute(builder: (ctx) => NavScreenOne()));
  }else if(receivedAction.payload != null &&
      receivedAction.payload!['screen_name'] == "DISMISS"){
    SplashPAge.navigator.currentState!
        .push(MaterialPageRoute(builder: (ctx) => NavScreenTwo()));
  }
}

class NotificationController extends ChangeNotifier {
  // SINGLETON PATTERN
  static final NotificationController _instance =
      NotificationController._internal();

  factory NotificationController() {
    return _instance;
  }

  NotificationController._internal();

// INITIALIZATION METHOD

  static Future<void> initializeLocalNotifications(
      {required bool debug}) async {
    await AwesomeNotifications().initialize(
      null,
      // 'resource://drawable/res_naruto.png',
      [
        NotificationChannel(
          channelKey: 'basic_channel',
          channelName: 'Basic notifications',
          channelDescription: 'Notification channel for basic tests',
          importance: NotificationImportance.Max,
          // defaultPrivacy: NotificationPrivacy.Secret,
          enableVibration: true,
          defaultColor: Colors.redAccent,
          channelShowBadge: true,
          enableLights: true,
          // icon: 'resource://drawable/res_naruto',
          // playSound: true,
          // soundSource: 'resource://raw/naruto_jutsu',
        ),
        NotificationChannel(
          channelGroupKey: "chat_tests",
          channelKey: "chats",
          channelName: "Group chats",
          channelDescription:
              'This is a simple example channel of a chat group',
          channelShowBadge: true,
          importance: NotificationImportance.Max,
        )
      ],
      debug: debug,
    );
  }

  static Future<void> awesomenotlistners() async {
    await AwesomeNotifications().setListeners(
        onActionReceivedMethod: NotificationController.onActionReceivedMethod,
        onDismissActionReceivedMethod:
            NotificationController.onDismissActionReceivedMethod,
        onNotificationCreatedMethod:
            NotificationController.onNotificationCreatedMethod,
        onNotificationDisplayedMethod:
            NotificationController.onNotificationDisplayedMethod);
  }

  static Future<void> onActionReceivedMethod(
      ReceivedAction receivedAction) async {
    bool isSilentAction =
        receivedAction.actionType == ActionType.SilentAction ||
            receivedAction.actionType == ActionType.SilentBackgroundAction;
    debugPrint(
        "{$isSilentAction ? 'silent_action': Action} Notification Recived");
    navigatorHelper(receivedAction);
    Fluttertoast.showToast(
        msg:
            "{$isSilentAction ? 'silent_action': Action} Notification Recived");

    debugPrint(receivedAction.toString());
    if (receivedAction.buttonKeyPressed == "SUBSCRIBE") {
      print("Subscribed Button Pressed");
    } else if (receivedAction.buttonKeyPressed == "DISMISS") {
      print("Dismiss Button Pressed");
    }
  }

  static Future<void> onNotificationCreatedMethod(
      ReceivedNotification receivedNotification) async {
    debugPrint(" Notification Recived");
    Fluttertoast.showToast(msg: "Notification Recived");
  }

  static Future<void> onNotificationDisplayedMethod(
      ReceivedNotification receivedAction) async {
    debugPrint(" Notification Displayed");
    Fluttertoast.showToast(msg: "Notification Displayed");
  }

  static Future<void> onDismissActionReceivedMethod(
      ReceivedAction receivedNotification) async {
    debugPrint(" Notification Dismissed");
    Fluttertoast.showToast(msg: "Notification Dismissed");
  }
  
  static Future<void> getintialiNotificationactions()async{
   ReceivedAction? reciveractions =await AwesomeNotifications().getInitialNotificationAction(removeFromActionEvents: true);
   if(reciveractions == null) return;
   navigatorHelper(reciveractions);
}
}
