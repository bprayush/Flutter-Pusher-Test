import 'package:flutter/material.dart';
import 'package:pusher/pusher.dart';
import 'package:pusher_test/pusher_credentials.dart';

void main() async {
  Pusher pusher = Pusher(APP_ID, KEY, SECRET, PusherOptions(cluster: CLUSTER));
  Response response = await pusher.trigger(
    ['my-channel'],
    'test',
    {'hello': 'hey'},
  );
  print(response);
  print(await pusher.get('/channels'));
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container();
  }
}
