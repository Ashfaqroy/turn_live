import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:turn_live/view/page/advancedsettings.dart';
import 'package:turn_live/view/page/edit_profile.dart';
import 'package:turn_live/view/page/home_screen.dart';
import 'package:turn_live/view/page/leaderboard.dart';
import 'package:turn_live/view/page/notifications.dart';
import 'package:turn_live/view/page/streaming.dart';
import 'package:turn_live/view/page/user_profile.dart';
import 'package:turn_live/view/page/videos_screen.dart';
import 'package:turn_live/view/page/wardrobe.dart';
import 'package:turn_live/view/page/welcome_page.dart';
import 'package:turn_live/view/widget/video_player.dart';

import 'view/page/followers_screen.dart';
import 'view/page/news_feed.dart';
import 'view/page/settings.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.red,
      ),
      home: WelcomePage(),
    );
  }
}
