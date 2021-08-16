import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:turn_live/view/page/notifications.dart';

import 'home_screen.dart';
import 'user_profile.dart';
import 'videos_screen.dart';

class NewsFeedPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
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
                      GestureDetector(
                        child: ImageIcon(AssetImage("assets/icons/home.png"),
                            color: Colors.black),
                        onTap: () {
                          Get.to(() => HomeScreenPage());
                        },
                      ),
                      Text("Live")
                    ],
                  ),
                  Spacer(),
                  GestureDetector(
                    onTap: () => Get.to(() => VideosScreenPage()),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        ImageIcon(AssetImage("assets/icons/video.png"),
                            color: Colors.black),
                        Text("Videos")
                      ],
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
                    onTap: () => Get.to(() => NewsFeedPage()),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        ImageIcon(AssetImage("assets/icons/feed.png"),
                            color: Colors.black),
                        Text("Feed")
                      ],
                    ),
                  ),
                  Spacer(),
                  GestureDetector(
                    onTap: () => Get.to(() => UserProfilePage()),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        ImageIcon(AssetImage("assets/icons/profile.png"),
                            color: Colors.black),
                        Text("Profile")
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
        body: NewsFeedBody(Con: context),
      ),
    );
  }

  NewsFeedBody({required BuildContext Con}) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Container(
          height: 50,
          color: Colors.red,
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Row(
              children: [
                ImageIcon(AssetImage("assets/icons/comment.png"),
                    color: Colors.white),
                Spacer(),
                ImageIcon(AssetImage("assets/icons/medal.png"),
                    color: Colors.white),
                SizedBox(
                  height: 20,
                ),
                GestureDetector(
                  onTap: () => Get.to(() => NotificationPage()),
                  child: ImageIcon(AssetImage("assets/icons/bell.png"),
                      color: Colors.white),
                ),
              ],
            ),
          ),
        ),
        Container(
          height: MediaQuery.of(Con).size.height / 1.3,
          child: ListView.builder(
            itemCount: 5,
            itemBuilder: (context, index) {
              return Padding(
                padding: const EdgeInsets.only(left: 15, right: 15),
                child: Card(
                  child: Column(
                    children: [
                      ListTile(
                        leading: ClipRRect(
                          borderRadius: BorderRadius.circular(5),
                          child: Image(
                              width: 40,
                              height: 40,
                              fit: BoxFit.fill,
                              image: AssetImage(
                                "assets/images/welcome.png",
                              )),
                        ),
                        title: Text("Masia Labron"),
                        subtitle: Text("12 Min"),
                        trailing: ElevatedButton(
                          onPressed: () {},
                          child: Text("Follow"),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(left: 20, right: 20),
                        child: Divider(
                          thickness: 1,
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(left: 25, right: 25),
                        child: Text(
                          "The state of utah in the united state is home to lots of beautiful parks, beachs",
                          style: GoogleFonts.roboto(
                              fontSize: 14, fontWeight: FontWeight.w400),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(
                            left: 9, right: 15, top: 13, bottom: 15),
                        child: Image.asset(
                          "assets/images/newsfeed.png",
                          height: 168,
                          width: 320,
                          fit: BoxFit.fill,
                        ),
                      ),
                      Row(
                        children: [
                          SizedBox(
                            width: 15,
                          ),
                          Icon(Icons.favorite_outline),
                          Text(
                            "1125",
                            style: GoogleFonts.roboto(
                                fontSize: 14, fontWeight: FontWeight.w400),
                          ),
                          Spacer(),
                          Icon(
                            Icons.comment_outlined,
                          ),
                          Text(
                            "Comment",
                            style: GoogleFonts.roboto(
                                fontSize: 14, fontWeight: FontWeight.w400),
                          ),
                          Spacer(),
                          Icon(Icons.share),
                          Text(
                            "Share",
                            style: GoogleFonts.roboto(
                                fontSize: 14, fontWeight: FontWeight.w400),
                          ),
                          SizedBox(
                            width: 15,
                          ),
                        ],
                      )
                    ],
                  ),
                ),
              );
            },
          ),
        )
      ],
    );
  }
}
