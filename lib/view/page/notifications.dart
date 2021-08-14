import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:turn_live/view/widget/bottombar.dart';
import 'package:turn_live/view/widget/video_player.dart';
import 'package:video_player/video_player.dart';

class NotificationPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          centerTitle: true,
          title: Text(
            "Videos",
            style: TextStyle(color: Colors.black),
          ),
          backgroundColor: Colors.white,
        ),
        bottomNavigationBar: BottomBar(),
        body: _Body(),
      ),
    );
  }

  _Body() {
    return Padding(
      padding: const EdgeInsets.all(16),
      child: ListView.separated(
          itemCount: 10,
          separatorBuilder: (context, index) {
            return Divider();
          },
          itemBuilder: (context, index) {
            return ListTile(
              leading: ClipRRect(
                borderRadius: BorderRadius.circular(10),
                child: CircleAvatar(
                  backgroundImage: AssetImage(
                    "assets/images/welcome.png",
                  ),
                ),
              ),
              title: Text("12 Apr 2020",
                  style: TextStyle(
                      fontWeight: FontWeight.w400,
                      color: Colors.grey,
                      fontSize: 11)),
              subtitle: Text(
                "Marisa Lobrone Strarted Following You",
                style: TextStyle(
                    fontWeight: FontWeight.w400,
                    fontSize: 13,
                    color: Colors.black),
              ),
            );
          }),
    );
  }
}
