import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:turn_live/view/page/home_screen.dart';
import 'package:turn_live/view/page/news_feed.dart';
import 'package:turn_live/view/page/user_profile.dart';
import 'package:turn_live/view/page/videos_screen.dart';

class BottomBar extends StatefulWidget {
  BottomBar({Key? key}) : super(key: key);

  @override
  _BottomBarState createState() => _BottomBarState();
}

class _BottomBarState extends State<BottomBar> {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 60,
      child: Material(
        elevation: 10,
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Row(
            children: [
              SizedBox(
                width: 20,
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                   GestureDetector(child: ImageIcon(AssetImage("assets/icons/home.png"), color: Colors.black),
                    onTap: () {
                      Get.to(() => HomeScreenPage());
                    },
                  ),
                  Text("Live")
                ],
              ),
              Spacer(),
              GestureDetector(
                onTap: ()=>Get.to(() => VideosScreenPage()),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [ImageIcon(AssetImage("assets/icons/video.png"), color: Colors.black), Text("Videos")],
                ),
              ),
              Spacer(),
              Align(
                alignment: Alignment.bottomCenter,
                child: FloatingActionButton(
                  onPressed: () {},
                  child: Icon(Icons.camera_alt_outlined),
                ),
              ),
              Spacer(),
              GestureDetector(
                onTap: ()=>Get.to(() => NewsFeedPage()),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [ImageIcon(AssetImage("assets/icons/feed.png"), color: Colors.black), Text("Feed")],
                ),
              ),
              Spacer(),
              GestureDetector(
                onTap: ()=>Get.to(() => UserProfilePage()),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    ImageIcon(AssetImage("assets/icons/profile.png"), color: Colors.black),
                    Text("Profile")
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
