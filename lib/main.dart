import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:turn_live/view/page/home_screen.dart';
import 'package:turn_live/view/page/leaderboard.dart';
import 'package:turn_live/view/page/videos_screen.dart';
import 'package:turn_live/view/page/wardrobe.dart';
import 'package:turn_live/view/widget/video_player.dart';

import 'view/page/news_feed.dart';

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
      home: VideosScreenPage(),
    );
  }
}
