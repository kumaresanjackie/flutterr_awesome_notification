import 'package:awesome_notifications/awesome_notifications.dart';
import 'package:flutter/material.dart';

class LocNotifications {
  static shedulebigpicturenotifications() {
    AwesomeNotifications().createNotification(
        content: NotificationContent(
            id: 0,
            channelKey: "basic_channel",
            title: "Basic Notifications",
            body: "Awesome Notifications",
            notificationLayout: NotificationLayout.BigPicture,
            bigPicture:
                "https://images.pexels.com/photos/326055/pexels-photo-326055.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=2"),
        schedule: NotificationCalendar(second: 0, repeats: true));
  }

  static cancelShedulenotifications(int id) async {
    await AwesomeNotifications().cancel(id);
/* await   AwesomeNotifications().cancelAll();
 await   AwesomeNotifications().cancelAllSchedules();
 await   AwesomeNotifications().cancelNotificationsByChannelKey("basic_channel");
 await   AwesomeNotifications().cancelNotificationsByGroupKey("groupKey");
 await   AwesomeNotifications().cancelSchedulesByChannelKey("basic_channel");*/
  }

  static showawesomenotactionButton(int id) async {
    AwesomeNotifications().createNotification(
        content: NotificationContent(
            id: id,
            channelKey: "basic_channel",
            title: "Action Buttons",
            body: "Action Button Showed"),
        actionButtons: [
          /*  NotificationActionButton(
              key: "READ",
              label: "Read",
              autoDismissible: true,
              requireInputText: true,
              isDangerousOption: true),*/
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
