import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:turn_live/view/widget/video_player.dart';

import 'home_screen.dart';
import 'news_feed.dart';
import 'user_profile.dart';

class VideosScreenPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(centerTitle: true,title: Text("Videos",style: TextStyle(color: Colors.black),),backgroundColor: Colors.white,),
        bottomNavigationBar: Container(
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
    ),
        body: _Body(),
      ),
    );
  }

  _Body() {
    return Padding(
      padding: const EdgeInsets.all(16),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Expanded(child: ListView.builder(itemCount: 5,itemBuilder: (context, index) {
            return VideoApp();
          })),
        ],
      ),
    );
  }
}
