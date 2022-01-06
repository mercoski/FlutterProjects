import 'dart:async';

import 'package:firebase_core/firebase_core.dart';
import 'package:firebase_messaging/firebase_messaging.dart';

Future<void> onBackgroundMessage(RemoteMessage message) async {
  await Firebase.initializeApp();

  if (message.data.containsKey('data')) {
    final data = message.data['data'];
  }

  if (message.data.containsKey('notification')) {
    //Handle notification message
    final notification = message.data['notification'];
  }

  //or do others
}

class FCM {
  final streamCntrl = StreamController<String>.broadcast();
  final titleCntrl = StreamController<String>.broadcast();
  final bodyCntrl = StreamController<String>.broadcast();

  setNotification() {
    FirebaseMessaging.onBackgroundMessage(onBackgroundMessage);

    //Handle when app is in active state
    forgroundNotification();

    //Handle when app is running in backend
    backgroundNotification();

    //Handle when app is closed by user or terminated
    terminateNotification();
  }

  forgroundNotification() {
    FirebaseMessaging.onMessage.listen((RemoteMessage message) {
      if (message.data.containsKey('data')) {
        //Handle data message
        streamCntrl.sink.add(message.data['data']);
      }
      if (message.data.containsKey('notification')) {
        //Handle notification message
        streamCntrl.sink.add(message.data['notification']);
      }
      titleCntrl.sink.add(message.notification!.title!);
      bodyCntrl.sink.add(message.notification!.body!);
    });
  }

  backgroundNotification() {
    FirebaseMessaging.onMessageOpenedApp.listen((RemoteMessage message) {
      if (message.data.containsKey('data')) {
        //Handle data message
        streamCntrl.sink.add(message.data['data']);
      }
      if (message.data.containsKey('notification')) {
        //Handle notification message
        streamCntrl.sink.add(message.data['notification']);
      }
      titleCntrl.sink.add(message.notification!.title!);
      bodyCntrl.sink.add(message.notification!.body!);
    });
  }

  terminateNotification() async {
    RemoteMessage? initialMessage =
        await FirebaseMessaging.instance.getInitialMessage();
    if (initialMessage != null) {
      if (initialMessage.data.containsKey('data')) {
        //Handle data message
        streamCntrl.sink.add(initialMessage.data['data']);
      }
      if (initialMessage.data.containsKey('notification')) {
        //Handle notification message
        streamCntrl.sink.add(initialMessage.data['notification']);
      }
      titleCntrl.sink.add(initialMessage.notification!.title!);
      bodyCntrl.sink.add(initialMessage.notification!.body!);
    }
  }

  dispose() {
    streamCntrl.close();
    titleCntrl.close();
    bodyCntrl.close();
  }
}
