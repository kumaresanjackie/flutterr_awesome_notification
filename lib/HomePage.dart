import 'package:awesome_notifications/awesome_notifications.dart';
import 'package:flutter/material.dart';
import 'package:flutterr_awesome_notification/services/awesome_notifocation.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  // @override
  // void initState() {
  //   //for sending and receiving notification we need to ensre the permissions allowed it will show the pop up for allowing the notifications
  //   AwesomeNotifications().isNotificationAllowed().then((value) {
  //     if (!value) {
  //       AwesomeNotifications().requestPermissionToSendNotifications();
  //     }
  //   });
  //   NotificationController.awesomenotlistners();
  //   super.initState();
  // }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("List Of Notifications"),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            FilledButton(
                onPressed: triggernotifications,
                child: Text("Basic Notifications")),
            FilledButton(
                onPressed: bigpicturenotifications,
                child: Text("Big Picture Notifications")),
            FilledButton(
                onPressed: bigtextnotifications,
                child: Text("Big Text Notifications")),
            FilledButton(
                onPressed: inboxnotifications,
                child: Text("Inbox Notifications")),
            FilledButton(
                onPressed: medianotifications,
                child: Text("Media Notifications")),
            FilledButton(
                onPressed: progressnotifications,
                child: Text("Progress Notifications")),
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

  triggernotifications() {
    AwesomeNotifications().createNotification(
        content: NotificationContent(
            id: 0,
            channelKey: "basic_channel",
            title: "Basic Notifications",
            body: "Awesome Notifications"));
  }

  bigpicturenotifications() {
    AwesomeNotifications().createNotification(
        content: NotificationContent(
            id: 0,
            channelKey: "basic_channel",
            title: "Basic Notifications",
            body: "Awesome Notifications",
            notificationLayout: NotificationLayout.BigPicture,
            bigPicture:
                "https://images.pexels.com/photos/326055/pexels-photo-326055.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=2"));
  }

  bigtextnotifications() {
    AwesomeNotifications().createNotification(
        content: NotificationContent(
      id: 0,
      channelKey: "basic_channel",
      title: "Basic Notifications",
      body:
          "Once upon a time there was a dear little girl who was loved by every one who looked at her, but most of all by her grandmother, and there was nothing that she would not have given to the child. Once she gave her a little cap of red velvet, which suited her so well that she would never wear anything else. So she was always called Little Red Riding Hood.One day her mother said to her, Come, Little Red Riding Hood, here is a piece of cake and a bottle of wine. Take them to your grandmother, she is ill and weak, and they will do her good. Set out before it gets hot, and when you are going, walk nicely and quietly and do not run off the path, or you may fall and break the bottle, and then your grandmother will get nothing. And when you go into her room, don't forget to say, good-morning, and don't peep into every corner before you do it.",
      notificationLayout: NotificationLayout.BigText,
    ));
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
