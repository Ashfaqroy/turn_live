import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:turn_live/view/widget/video_player.dart';
import 'package:video_player/video_player.dart';

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
                    children: [Icon(Icons.home), Text("Live")],
                  ),
                  Spacer(),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [Icon(Icons.circle_outlined), Text("Videos")],
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
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [Icon(Icons.feed), Text("Feed")],
                  ),
                  Spacer(),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      Icon(Icons.security_update_good_sharp),
                      Text("Profile")
                    ],
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
