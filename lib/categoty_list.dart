import 'package:awesome_notifications/awesome_notifications.dart';
import 'package:flutter/material.dart';
import 'package:flutterr_awesome_notification/HomePage.dart';
import 'package:flutterr_awesome_notification/screens/not_with_payload.dart';
import 'package:flutterr_awesome_notification/services/action_buttons_not.dart';
import 'package:flutterr_awesome_notification/services/awesome_notifocation.dart';

import 'awesome_not_propertu.dart';

class AwesomeNotCategories extends StatefulWidget {
   AwesomeNotCategories({super.key});


  @override

  State<AwesomeNotCategories> createState() => _AwesomeNotCategoriesState();

}


class _AwesomeNotCategoriesState extends State<AwesomeNotCategories> {

  @override
  void initState() {
    //for sending and receiving notification we need to ensre the permissions allowed it will show the pop up for allowing the notifications
    AwesomeNotifications().isNotificationAllowed().then((value) {
      if (!value) {
        AwesomeNotifications().requestPermissionToSendNotifications();
      }
    });
    NotificationController.awesomenotlistners();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(

      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: Scaffold(
        appBar: AppBar(
          title: Text("Notification Categorys"),
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              FilledButton(
                  onPressed: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (ctx) => HomePage()));
                  },
                  child: Text("Basic Notification")),
              FilledButton(
                  onPressed: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (ctx) =>
                                AwesomeNotificationsProperties()));
                  },
                  child: Text("Shedule Notification Properties")),
              FilledButton(
                  onPressed: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (ctx) => ActionButtonNotification()));
                  },
                  child: Text("Action Buttons")),
              FilledButton(
                  onPressed: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (ctx) => NotWithPayload()));
                  },
                  child: Text("Payload Not NAV")),
            ],
          ),
        ),
      ),
    );
  }
}
