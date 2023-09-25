import 'package:awesome_notifications/awesome_notifications.dart';
import 'package:flutter/material.dart';

class NotWithPayload extends StatefulWidget {
  const NotWithPayload({super.key});

  @override
  State<NotWithPayload> createState() => _NotWithPayloadState();
}

class _NotWithPayloadState extends State<NotWithPayload> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Notification With Payload"),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            FilledButton(
                onPressed: payloadNotifications,
                child: Text("Payload Notification")),
            FilledButton(
                onPressed: payloadNotificationstwo,
                child: Text("Payload Notification Two")),
          ],
        ),
      ),
    );
  }

  payloadNotifications() async {
    AwesomeNotifications().createNotification(
        content: NotificationContent(
            id: 0,
            channelKey: "basic_channel",
            title: "Payload Notifications",
            body: "Not Payload for NAV",
            payload: {"screen_name": "SUBSCRIBE"}),
        actionButtons: [
          NotificationActionButton(
            key: "SUBSCRIBE",
            label: "Subsscribe",
            // actionType: ActionType.DisabledAction,
            // enabled: false,
            color: Colors.yellow,
          ),
          NotificationActionButton(
            key: "DISMISS",
            label: "Dismiss",
            actionType: ActionType.Default,
            // enabled: false,
            color: Colors.green,
          ),
        ]);
  }

  payloadNotificationstwo() async {
    AwesomeNotifications().createNotification(
        content: NotificationContent(
            id: 0,
            channelKey: "basic_channel",
            title: "Payload Notifications",
            body: "Not Payload for NAV",
            payload: {"screen_name": "DISMISS"}),
        actionButtons: [
          NotificationActionButton(
            key: "SUBSCRIBE",
            label: "Subsscribe",
            // actionType: ActionType.DisabledAction,
            // enabled: false,
            color: Colors.yellow,
          ),
          NotificationActionButton(
            key: "DISMISS",
            label: "Dismiss",
            actionType: ActionType.Default,
            // enabled: false,
            color: Colors.green,
          ),
        ]);
  }
}
