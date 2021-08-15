import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:turn_live/view/page/advancedsettings.dart';
import 'package:turn_live/view/widget/bottombar.dart';
import 'package:turn_live/view/widget/switch.dart';

class SettingsPage extends StatelessWidget {
  var height;
  var width;

  @override
  Widget build(BuildContext context) {
    width = MediaQuery.of(context).size.width;
    height = MediaQuery.of(context).size.height;
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          automaticallyImplyLeading: false, // Don't show the leading button
          backgroundColor: Colors.white,
          title: Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              GestureDetector(
                onTap: () => Navigator.of(context).pop(),
                child: Icon(CupertinoIcons.back, color: Colors.blue),
              ),
              Text(
                "Back",
                style: GoogleFonts.roboto(
                    fontSize: 16,
                    fontWeight: FontWeight.w500,
                    color: Colors.blue),
              ),
              Spacer(),
              Text(
                "Settings",
                style: GoogleFonts.roboto(
                    fontSize: 18,
                    fontWeight: FontWeight.w500,
                    color: Colors.black),
              ),
              Spacer(),
              Text(
                "Cancel",
                style: GoogleFonts.roboto(
                    fontSize: 16,
                    fontWeight: FontWeight.w500,
                    color: Colors.blue),
              ),
            ],
          ),
        ),
        bottomNavigationBar: BottomBar(),
        body: _Body(),
      ),
    );
  }

  _Body() {
    return SingleChildScrollView(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SizedBox(
            height: 5,
          ),
          Padding(
            padding:
                const EdgeInsets.only(left: 26, right: 15, top: 5, bottom: 5),
            child: Row(
              children: [
                Text(
                  "Privacy",
                  style: GoogleFonts.roboto(
                      color: Colors.black.withOpacity(0.40),
                      fontSize: 14,
                      fontWeight: FontWeight.w400),
                ),
              ],
            ),
          ),
          Padding(
            padding:
                const EdgeInsets.only(left: 26, right: 15, top: 10, bottom: 5),
            child: Row(
              children: [
                Text(
                  "Private Account",
                  style: GoogleFonts.roboto(
                      color: Colors.black,
                      fontSize: 16,
                      fontWeight: FontWeight.w500),
                ),
                Spacer(),
                MySwitch(),
              ],
            ),
          ),
          Padding(
            padding:
                const EdgeInsets.only(left: 26, right: 15, top: 10, bottom: 5),
            child: Row(
              children: [
                Text(
                  "Private Follow List",
                  style: GoogleFonts.roboto(
                      color: Colors.black,
                      fontSize: 16,
                      fontWeight: FontWeight.w500),
                ),
                Spacer(),
                MySwitch(),
              ],
            ),
          ),
          Padding(
              padding:
                  const EdgeInsets.only(left: 26, right: 15, top: 5, bottom: 5),
              child: Row(
                children: [
                  Text(
                    "User Settings",
                    style: GoogleFonts.roboto(
                        color: Colors.black.withOpacity(0.40),
                        fontSize: 14,
                        fontWeight: FontWeight.w400),
                  ),
                ],
              )),
          Padding(
            padding:
                const EdgeInsets.only(left: 26, right: 15, top: 5, bottom: 5),
            child: Row(
              children: [
                CircleAvatar(
                    backgroundColor: Color(0xFF007AFF),
                    child: ImageIcon(
                      AssetImage("assets/icons/calander.png"),
                      color: Colors.white,
                    )),
                SizedBox(
                  width: 10,
                ),
                Text(
                  "Stream Schedule",
                  style: GoogleFonts.roboto(
                      color: Colors.black,
                      fontSize: 16,
                      fontWeight: FontWeight.w500),
                ),
                Spacer(),
                IconButton(
                    onPressed: () {},
                    icon: Icon(
                      CupertinoIcons.forward,
                      color: Colors.grey,
                    ))
              ],
            ),
          ),
          Padding(
            padding:
                const EdgeInsets.only(left: 26, right: 15, top: 5, bottom: 5),
            child: Row(
              children: [
                CircleAvatar(
                    backgroundColor: Color(0xFFE8436B),
                    child: ImageIcon(
                      AssetImage("assets/icons/dimand.png"),
                      color: Colors.white,
                    )),
                SizedBox(
                  width: 10,
                ),
                Text(
                  "Terms of Service",
                  style: GoogleFonts.roboto(
                      color: Colors.black,
                      fontSize: 16,
                      fontWeight: FontWeight.w500),
                ),
                Spacer(),
                IconButton(
                    onPressed: () {},
                    icon: Icon(
                      CupertinoIcons.forward,
                      color: Colors.grey,
                    ))
              ],
            ),
          ),
          Padding(
            padding:
                const EdgeInsets.only(left: 26, right: 15, top: 5, bottom: 5),
            child: Row(
              children: [
                CircleAvatar(
                    backgroundColor: Color(0xFFF4CE33),
                    child: ImageIcon(
                      AssetImage("assets/icons/trophy.png"),
                      color: Colors.white,
                    )),
                SizedBox(
                  width: 10,
                ),
                Text(
                  "Terms of Service",
                  style: GoogleFonts.roboto(
                      color: Colors.black,
                      fontSize: 16,
                      fontWeight: FontWeight.w500),
                ),
                Spacer(),
                IconButton(
                    onPressed: () {},
                    icon: Icon(
                      CupertinoIcons.forward,
                      color: Colors.grey,
                    ))
              ],
            ),
          ),
          Padding(
            padding:
                const EdgeInsets.only(left: 26, right: 15, top: 5, bottom: 5),
            child: Row(
              children: [
                CircleAvatar(
                    backgroundColor: Color(0xFFBD77DB),
                    child: ImageIcon(
                      AssetImage("assets/icons/dolor.png"),
                      color: Colors.white,
                    )),
                SizedBox(
                  width: 10,
                ),
                Text(
                  "Terms of Service",
                  style: GoogleFonts.roboto(
                      color: Colors.black,
                      fontSize: 16,
                      fontWeight: FontWeight.w500),
                ),
                Spacer(),
                IconButton(
                    onPressed: () {},
                    icon: Icon(
                      CupertinoIcons.forward,
                      color: Colors.grey,
                    ))
              ],
            ),
          ),
          Padding(
            padding:
                const EdgeInsets.only(left: 26, right: 15, top: 5, bottom: 5),
            child: Row(
              children: [
                CircleAvatar(
                  backgroundColor: Color(0xFF0DC758),
                  child: ImageIcon(
                    AssetImage("assets/icons/voilate.png"),
                    color: Colors.white,
                  ),
                ),
                SizedBox(
                  width: 10,
                ),
                Text(
                  "Terms of Service",
                  style: GoogleFonts.roboto(
                      color: Colors.black,
                      fontSize: 16,
                      fontWeight: FontWeight.w500),
                ),
                Spacer(),
                IconButton(
                    onPressed: () {},
                    icon: Icon(
                      CupertinoIcons.forward,
                      color: Colors.grey,
                    ))
              ],
            ),
          ),
          Padding(
            padding:
                const EdgeInsets.only(left: 26, right: 15, top: 5, bottom: 5),
            child: Row(
              children: [
                CircleAvatar(
                    backgroundColor: Color(0xFF007AFF),
                    child: ImageIcon(
                      AssetImage("assets/icons/gift.png"),
                      color: Colors.white,
                    )),
                SizedBox(
                  width: 10,
                ),
                Text(
                  "Terms of Service",
                  style: GoogleFonts.roboto(
                      color: Colors.black,
                      fontSize: 16,
                      fontWeight: FontWeight.w500),
                ),
                Spacer(),
                IconButton(
                    onPressed: () {},
                    icon: Icon(
                      CupertinoIcons.forward,
                      color: Colors.grey,
                    ))
              ],
            ),
          ),
          Padding(
            padding:
                const EdgeInsets.only(left: 26, right: 15, top: 5, bottom: 5),
            child: Row(
              children: [
                CircleAvatar(
                    backgroundColor: Color(0xFFF77943),
                    child: ImageIcon(
                      AssetImage(
                        "assets/icons/lines.png",
                      ),
                      color: Colors.white,
                    )),
                SizedBox(
                  width: 10,
                ),
                Text(
                  "Leaderboard Invisible Setting",
                  style: GoogleFonts.roboto(
                      color: Colors.black,
                      fontSize: 16,
                      fontWeight: FontWeight.w500),
                ),
                Spacer(),
                IconButton(
                    onPressed: () {},
                    icon: Icon(
                      CupertinoIcons.forward,
                      color: Colors.grey,
                    ))
              ],
            ),
          ),
          Padding(
            padding:
                const EdgeInsets.only(left: 26, right: 15, top: 5, bottom: 5),
            child: Row(
              children: [
                SizedBox(
                  width: width / 2.3,
                  child: ElevatedButton(
                    style: ElevatedButton.styleFrom(),
                    onPressed: () {},
                    child: Center(
                      child: Text(
                        "Logout",
                        style: GoogleFonts.roboto(
                            color: Colors.white,
                            fontSize: 14,
                            fontWeight: FontWeight.w500),
                      ),
                    ),
                  ),
                ),
                Spacer(),
                SizedBox(
                  width: width / 2.3,
                  child: ElevatedButton(
                    style: ElevatedButton.styleFrom(primary: Colors.grey[350]),
                    onPressed: () => Get.to(() => AdvancedSettingsPage()),
                    child: Center(
                      child: Text(
                        "Advanceed Settings",
                        style: GoogleFonts.roboto(
                            color: Colors.black,
                            fontSize: 14,
                            fontWeight: FontWeight.w500),
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
