import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:turn_live/view/page/settings.dart';
import 'package:turn_live/view/widget/bottombar.dart';

import 'edit_profile.dart';

class UserProfilePage extends StatelessWidget {
  var height;
  var width;
  @override
  Widget build(BuildContext context) {
    width = MediaQuery.of(context).size.width;
    height = MediaQuery.of(context).size.height;
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text(
          "Edit Profile",
          style: TextStyle(color: Colors.black),
        ),
        backgroundColor: Colors.white,
      ),
      bottomNavigationBar: BottomBar(),
      body: _Body(),
    );
  }

  _Body() {
    return Padding(
      padding: const EdgeInsets.all(16),
      child: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Stack(
              alignment: Alignment.center,
              textDirection: TextDirection.rtl,
              fit: StackFit.loose,
              overflow: Overflow.visible,
              clipBehavior: Clip.hardEdge,
              children: [
                Align(
                  alignment: Alignment.center,
                  child: CircleAvatar(
                    backgroundImage: AssetImage("assets/images/welcome.png"),
                    radius: 50,
                  ),
                ),
                Positioned(
                  height: 40,
                  width: 40,
                  top: 68,
                  right: width / 2.1,
                  child: CircleAvatar(
                      backgroundColor: Colors.red,
                      child: Icon(Icons.camera_alt)),
                )
              ],
            ),
            SizedBox(
              height: 25,
            ),
            Text(
              "John Deo",
              style: GoogleFonts.roboto(
                  color: Colors.black,
                  fontSize: 22,
                  fontWeight: FontWeight.bold),
            ),
            SizedBox(
              height: 10,
            ),
            Text(
              "Beloger,Designer And Actor",
              style: GoogleFonts.roboto(
                  color: Colors.black.withOpacity(0.65),
                  fontSize: 15,
                  fontWeight: FontWeight.w400),
            ),
            SizedBox(height: 10),
            Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                  width: 100,
                  height: 30,
                  color: Colors.red,
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Icon(
                        Icons.star,
                        color: Colors.amber,
                      ),
                      Text(
                        "Save",
                        style: GoogleFonts.roboto(
                            color: Colors.white,
                            fontSize: 14,
                            fontWeight: FontWeight.w500),
                      ),
                    ],
                  ),
                ),
                SizedBox(
                  width: 20,
                ),
                Container(
                  width: 120,
                  height: 30,
                  color: Color(0xFFF1F1F1),
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Icon(
                        Icons.star,
                        color: Colors.black,
                      ),
                      Text(
                        "Leaderboard",
                        style: GoogleFonts.roboto(
                            color: Colors.black,
                            fontSize: 14,
                            fontWeight: FontWeight.w500),
                      ),
                    ],
                  ),
                )
              ],
            ),
            SizedBox(
              height: 10,
            ),
            Row(
              children: [
                SizedBox(
                  width: 10,
                ),
                Column(
                  children: [
                    Text(
                      "224",
                      style: GoogleFonts.roboto(
                          color: Colors.black,
                          fontSize: 20,
                          fontWeight: FontWeight.w500),
                    ),
                    Text(
                      "Followers",
                      style: GoogleFonts.roboto(
                          color: Colors.black,
                          fontSize: 12,
                          fontWeight: FontWeight.w400),
                    ),
                  ],
                ),
                Spacer(),
                Column(
                  children: [
                    Text(
                      "27",
                      style: GoogleFonts.roboto(
                          color: Colors.black,
                          fontSize: 20,
                          fontWeight: FontWeight.w500),
                    ),
                    Text(
                      "Following",
                      style: GoogleFonts.roboto(
                          color: Colors.black,
                          fontSize: 12,
                          fontWeight: FontWeight.w400),
                    ),
                  ],
                ),
                Spacer(),
                Column(
                  children: [
                    Text(
                      "2107",
                      style: GoogleFonts.roboto(
                          color: Colors.black,
                          fontSize: 20,
                          fontWeight: FontWeight.w500),
                    ),
                    Text(
                      "Views",
                      style: GoogleFonts.roboto(
                          color: Colors.black,
                          fontSize: 12,
                          fontWeight: FontWeight.w400),
                    ),
                  ],
                ),
                Spacer(),
                Column(
                  children: [
                    Text(
                      "1200",
                      style: GoogleFonts.roboto(
                          color: Colors.black,
                          fontSize: 20,
                          fontWeight: FontWeight.w500),
                    ),
                    Text(
                      "Likes",
                      style: GoogleFonts.roboto(
                          color: Colors.black,
                          fontSize: 12,
                          fontWeight: FontWeight.w400),
                    ),
                  ],
                ),
                SizedBox(
                  width: 10,
                ),
              ],
            ),
            SizedBox(
              height: 10,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Column(
                  children: [
                    FloatingActionButton(
                        backgroundColor: Colors.white,
                        onPressed: () {},
                        child: ImageIcon(
                          AssetImage("assets/icons/stream.png"),
                          color: Colors.black,
                        )),
                    SizedBox(
                      height: 5,
                    ),
                    Text(
                      "Stream \n Schedule",
                      style: GoogleFonts.roboto(
                          color: Colors.black,
                          fontSize: 12,
                          fontWeight: FontWeight.w400),
                    ),
                  ],
                ),
                SizedBox(
                  width: 10,
                ),
                Column(
                  children: [
                    FloatingActionButton(
                        backgroundColor: Colors.white,
                        onPressed: () => Get.to(() => EditProfilePage()),
                        child: ImageIcon(
                          AssetImage("assets/icons/edit.png"),
                          color: Colors.black,
                        )),
                    SizedBox(
                      height: 5,
                    ),
                    Text(
                      "Edit Profile",
                      style: GoogleFonts.roboto(
                          color: Colors.black,
                          fontSize: 10,
                          fontWeight: FontWeight.w400),
                    ),
                  ],
                ),
                SizedBox(
                  width: 10,
                ),
                Column(
                  children: [
                    FloatingActionButton(
                        backgroundColor: Colors.white,
                        onPressed: () {},
                        child: ImageIcon(
                          AssetImage("assets/icons/pshare.png"),
                          color: Colors.black,
                        )),
                    SizedBox(
                      height: 5,
                    ),
                    Text(
                      "Share",
                      style: GoogleFonts.roboto(
                          color: Colors.black,
                          fontSize: 12,
                          fontWeight: FontWeight.w400),
                    ),
                  ],
                ),
                SizedBox(
                  width: 10,
                ),
                Column(
                  children: [
                    FloatingActionButton(
                        backgroundColor: Colors.white,
                        onPressed: () {},
                        child: ImageIcon(
                          AssetImage("assets/icons/gua.png"),
                          color: Colors.black,
                        )),
                    SizedBox(
                      height: 5,
                    ),
                    Text(
                      "Guardian",
                      style: GoogleFonts.roboto(
                          color: Colors.black,
                          fontSize: 12,
                          fontWeight: FontWeight.w400),
                    ),
                  ],
                ),
                SizedBox(
                  width: 10,
                ),
                Column(
                  children: [
                    FloatingActionButton(
                        backgroundColor: Colors.white,
                        onPressed: () => Get.to(() => SettingsPage()),
                        child: ImageIcon(
                          AssetImage("assets/icons/set.png"),
                          color: Colors.black,
                        )),
                    SizedBox(
                      height: 5,
                    ),
                    Text(
                      "Settings",
                      style: GoogleFonts.roboto(
                          color: Colors.black,
                          fontSize: 12,
                          fontWeight: FontWeight.w400),
                    ),
                  ],
                ),
              ],
            ),
            SizedBox(
              height: 10,
            ),
            GridView.builder(
              physics: NeverScrollableScrollPhysics(),
              scrollDirection: Axis.vertical,
              shrinkWrap: true,
              itemCount: 10,
              gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 2,
                  childAspectRatio: 2.2 / 2.7,
                  crossAxisSpacing: 10,
                  mainAxisSpacing: 10),
              itemBuilder: (context, index) {
                return Column(
                  children: [
                    ClipRRect(
                      child: Image.asset(
                        "assets/images/welcome.png",
                        height: 180,
                        width: 200,
                        fit: BoxFit.fill,
                      ),
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Icon(
                          Icons.favorite_outline,
                          color: Colors.black,
                        ),
                        Text(
                          "1125",
                          style: GoogleFonts.roboto(
                              color: Colors.black,
                              fontSize: 12,
                              fontWeight: FontWeight.w400),
                        ),
                        SizedBox(
                          width: 5,
                        ),
                        Icon(
                          Icons.comment_outlined,
                          color: Colors.black,
                        ),
                        Text(
                          "Comment",
                          style: GoogleFonts.roboto(
                              color: Colors.black,
                              fontSize: 12,
                              fontWeight: FontWeight.w400),
                        ),
                      ],
                    ),
                  ],
                );
              },
            ),
          ],
        ),
      ),
    );
  }
}
