import 'package:flutter/material.dart';
import 'package:flutterr_awesome_notification/services/local_notifications.dart';

class ActionButtonNotification extends StatefulWidget {
  const ActionButtonNotification({super.key});

  @override
  State<ActionButtonNotification> createState() =>
      _ActionButtonNotificationState();
}

class _ActionButtonNotificationState extends State<ActionButtonNotification> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Action Button"),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            FilledButton(
                onPressed: () => LocNotifications.showawesomenotactionButton(0),
                child: Text("Acction Buttons  Notifications")),
            FilledButton(
                onPressed: () => LocNotifications.showawesomenotactionButton(0),
                child: Text("Acction Buttons  Notifications")),
          ],
        ),
      ),
    );
  }
}
