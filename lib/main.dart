import 'dart:async';
import 'package:awesome_notifications/awesome_notifications.dart';
import 'package:flutter/material.dart';
import 'package:flutterr_awesome_notification/services/awesome_notifocation.dart';

import 'categoty_list.dart';

void main() async {
  // WidgetsFlutterBinding.ensureInitialized();
  // await NotificationController.initializeLocalNotifications(debug: true);
  // await NotificationController.awesomenotlistners();
  // scheduleMicrotask(() async {
  //   await NotificationController.getintialiNotificationactions();
  // });

  AwesomeNotifications().initialize(
      null,
      [
        NotificationChannel(
            //it  will be the showing in the notifications  settings
            channelKey: "basic_channel",
            channelName: "Basic Notifications",
            channelDescription: "Notification Channel for basic test",
            importance: NotificationImportance
                .Max, //Check Assests notification_importance.png
            // defaultPrivacy: NotificationPrivacy.Secret //Hides sensitive notifications when the device is on lock screen Public: Show this notification in its entirety on all lockscreens Private: Show this notification on all lockscreens, but conceal sensitive or private information on secure lockscreens Secret: Do not reveal any part of this notification on a secure lockscreen
            // defaultPrivacy: NotificationPrivacy.Public,
            // defaultRingtoneType: DefaultRingtoneType.Alarm //Determines what kind of default sound should be played with the notification Ringtone: Type that refers to sounds that are used for the phone ringer. Notification: Type that refers to sounds that are used for notifications (default). Alarm: Type that refers to sounds that are used for the alarm.
            //   defaultRingtoneType: DefaultRingtoneType.Notification
            //   defaultRingtoneType: DefaultRingtoneType.Ringtone,
            enableVibration: true,
            defaultColor: Colors.purpleAccent,
            channelShowBadge: true, //it will shoe the notification count
            enableLights:
                true, //If the device has lights it will blink when notification recieved
            icon: "resource://drawable/cicon",
            playSound: true,
            soundSource: "resource://raw/not_sound",
        ),//formate  m4a
      ],
      debug: true); // null uses the default use the flutter
  runApp(SplashPAge());
}

class SplashPAge extends StatelessWidget {
  const SplashPAge({super.key});
  static final GlobalKey<NavigatorState> navigator =
      GlobalKey<NavigatorState>();
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      navigatorKey: navigator,
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: AwesomeNotCategories(),
    );
  }
}
