import 'package:awesome_notifications/awesome_notifications.dart';
import 'package:flutter/material.dart';
import 'package:flutterr_awesome_notification/services/local_notifications.dart';

class AwesomeNotificationsProperties extends StatefulWidget {
  const AwesomeNotificationsProperties({super.key});

  @override
  State<AwesomeNotificationsProperties> createState() =>
      _AwesomeNotificationsPropertiesState();
}

class _AwesomeNotificationsPropertiesState
    extends State<AwesomeNotificationsProperties> {
  @override
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Shedule Notificatio Properties"),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            FilledButton(
                onPressed: shedulenotifications,
                child: Text("Shedule  Notifications")),
            FilledButton(
                onPressed: shedulebigpicturenotifications,
                child: Text("Sheule(Repeat) Picture Notifications")),
            FilledButton(
                onPressed: () {
                  cancelShedulenotifications(0);
                },
                child: Text("Cancel Notifications")),
            FilledButton(
                onPressed: timeshedulenotifications,
                child: Text("Time  Shedule Notifications")),
            FilledButton(
                onPressed: LocNotifications.shedulebigpicturenotifications,
                child: Text("Class Shedule Notifications")),
            FilledButton(
                onPressed:()=> LocNotifications.cancelShedulenotifications(0),
                child: Text("Class Cancel Notifications")),
            FilledButton(
                onPressed: messagenotifications,
                child: Text("Message Notifications")),
            FilledButton(
                onPressed: messagegroupnotifications,
                child: Text("Message Grroup Notifications")),
          ],
        ),
      ),
    );
  }

  shedulenotifications() {
    AwesomeNotifications().createNotification(
      content: NotificationContent(
        id: 0,
        channelKey: "basic_channel",
        title: "Basic Notifications",
        body: "Awesome Notifications",
      ),
      schedule: NotificationCalendar.fromDate(
          date: DateTime.now().add(
            Duration(minutes: 1),
          ),
          preciseAlarm:
              true, // That fuction gives the exact time notification, make sure to when it necessary that time only user it will comsume more batterey power some time device will kill th notifications
          allowWhileIdle:
              true, //That  func will give the notification such aas low power mode
          repeats: true),
    );
  }

  shedulebigpicturenotifications() {
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

  cancelShedulenotifications(int id) async {
    await AwesomeNotifications().cancel(id);
/* await   AwesomeNotifications().cancelAll();
 await   AwesomeNotifications().cancelAllSchedules();
 await   AwesomeNotifications().cancelNotificationsByChannelKey("basic_channel");
 await   AwesomeNotifications().cancelNotificationsByGroupKey("groupKey");
 await   AwesomeNotifications().cancelSchedulesByChannelKey("basic_channel");*/
  }

  timeshedulenotifications() {
    AwesomeNotifications().createNotification(
        content: NotificationContent(
          id: 0,
          channelKey: "basic_channel",
          title: "Basic Notifications",
          body:
              "Once upon a time there was a dear little girl who was loved by every one who looked at her, but most of all by her grandmother, and there was nothing that she would not have given to the child. Once she gave her a little cap of red velvet, which suited her so well that she would never wear anything else. So she was always called Little Red Riding Hood.One day her mother said to her, Come, Little Red Riding Hood, here is a piece of cake and a bottle of wine. Take them to your grandmother, she is ill and weak, and they will do her good. Set out before it gets hot, and when you are going, walk nicely and quietly and do not run off the path, or you may fall and break the bottle, and then your grandmother will get nothing. And when you go into her room, don't forget to say, good-morning, and don't peep into every corner before you do it.",
          notificationLayout: NotificationLayout.BigText,
        ),
        schedule: NotificationCalendar(
            weekday: 2, hour: 13, minute: 55, repeats: true, second: 0));
  }

  inboxnotifications() {
    AwesomeNotifications().createNotification(
        content: NotificationContent(
      id: 0,
      channelKey: "basic_channel",
      title: "Basic Notifications",
      body:
          "Once upon a time there was a dear little girl who was loved by every one who looked at her, but most of all by her grandmother, and there was nothing that she would not have given to the child. Once she gave her a little cap of red velvet, which suited her so well that she would never wear anything else. So she was always called Little Red Riding Hood.One day her mother said to her, Come, Little Red Riding Hood, here is a piece of cake and a bottle of wine. Take them to your grandmother, she is ill and weak, and they will do her good. Set out before it gets hot, and when you are going, walk nicely and quietly and do not run off the path, or you may fall and break the bottle, and then your grandmother will get nothing. And when you go into her room, don't forget to say, good-morning, and don't peep into every corner before you do it.",
      notificationLayout: NotificationLayout.Inbox,
    ));
  }

  medianotifications() {
    AwesomeNotifications().createNotification(
        content: NotificationContent(
      id: 0,
      channelKey: "basic_channel",
      title: "Basic Notifications",
      body:
          "Once upon a time there was a dear little girl who was loved by every one who looked at her, but most of all by her grandmother, and there was nothing that she would not have given to the child. Once she gave her a little cap of red velvet, which suited her so well that she would never wear anything else. So she was always called Little Red Riding Hood.One day her mother said to her, Come, Little Red Riding Hood, here is a piece of cake and a bottle of wine. Take them to your grandmother, she is ill and weak, and they will do her good. Set out before it gets hot, and when you are going, walk nicely and quietly and do not run off the path, or you may fall and break the bottle, and then your grandmother will get nothing. And when you go into her room, don't forget to say, good-morning, and don't peep into every corner before you do it.",
      notificationLayout: NotificationLayout.MediaPlayer,
    ));
  }

  progressnotifications() {
    AwesomeNotifications().createNotification(
        content: NotificationContent(
      id: 0,
      channelKey: "basic_channel",
      title: "Basic Notifications",
      body:
          "Once upon a time there was a dear little girl who was loved by every one who looked at her, but most of all by her grandmother, and there was nothing that she would not have given to the child. Once she gave her a little cap of red velvet, which suited her so well that she would never wear anything else. So she was always called Little Red Riding Hood.One day her mother said to her, Come, Little Red Riding Hood, here is a piece of cake and a bottle of wine. Take them to your grandmother, she is ill and weak, and they will do her good. Set out before it gets hot, and when you are going, walk nicely and quietly and do not run off the path, or you may fall and break the bottle, and then your grandmother will get nothing. And when you go into her room, don't forget to say, good-morning, and don't peep into every corner before you do it.",
      notificationLayout: NotificationLayout.ProgressBar,
    ));
  }

  messagenotifications() {
    AwesomeNotifications().createNotification(
        content: NotificationContent(
      id: 0,
      channelKey: "basic_channel",
      title: "Basic Notifications",
      body:
          "Once upon a time there was a dear little girl who was loved by every one who looked at her, but most of all by her grandmother, and there was nothing that she would not have given to the child. Once she gave her a little cap of red velvet, which suited her so well that she would never wear anything else. So she was always called Little Red Riding Hood.One day her mother said to her, Come, Little Red Riding Hood, here is a piece of cake and a bottle of wine. Take them to your grandmother, she is ill and weak, and they will do her good. Set out before it gets hot, and when you are going, walk nicely and quietly and do not run off the path, or you may fall and break the bottle, and then your grandmother will get nothing. And when you go into her room, don't forget to say, good-morning, and don't peep into every corner before you do it.",
      notificationLayout: NotificationLayout.Messaging,
    ));
  }

  messagegroupnotifications() {
    AwesomeNotifications().createNotification(
        content: NotificationContent(
      id: 0,
      channelKey: "basic_channel",
      title: "Basic Notifications",
      body:
          "Once upon a time there was a dear little girl who was loved by every one who looked at her, but most of all by her grandmother, and there was nothing that she would not have given to the child. Once she gave her a little cap of red velvet, which suited her so well that she would never wear anything else. So she was always called Little Red Riding Hood.One day her mother said to her, Come, Little Red Riding Hood, here is a piece of cake and a bottle of wine. Take them to your grandmother, she is ill and weak, and they will do her good. Set out before it gets hot, and when you are going, walk nicely and quietly and do not run off the path, or you may fall and break the bottle, and then your grandmother will get nothing. And when you go into her room, don't forget to say, good-morning, and don't peep into every corner before you do it.",
      notificationLayout: NotificationLayout.MessagingGroup,
    ));
  }
}
