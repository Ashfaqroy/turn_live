import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:turn_live/view/widget/bottombar.dart';

class AdvancedSettingsPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          centerTitle: true,
          title: Text(
            "Advance Settings",
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
    return Column(
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
                "Verify Your Number",
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
              const EdgeInsets.only(left: 26, right: 15, top: 10, bottom: 5),
          child: Row(
            children: [
              Text(
                "Notifcation Setting",
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
        Container(
          alignment: Alignment.centerLeft,
          height: 50,
          color: Color(0xFFC4C4C4).withOpacity(0.29),
          child: Padding(
            padding:
                const EdgeInsets.only(left: 26, right: 15, top: 10, bottom: 10),
            child: Text(
              "Support",
              style: GoogleFonts.roboto(
                  color: Colors.black.withOpacity(0.46),
                  fontSize: 20,
                  fontWeight: FontWeight.w400),
            ),
          ),
        ),
        Padding(
          padding:
              const EdgeInsets.only(left: 26, right: 15, top: 5, bottom: 5),
          child: Row(
            children: [
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
              const EdgeInsets.only(left: 26, right: 15, top: 10, bottom: 5),
          child: Row(
            children: [
              Text(
                "Support",
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
        Container(
          alignment: Alignment.centerLeft,
          height: 50,
          color: Color(0xFFC4C4C4).withOpacity(0.29),
          child: Padding(
            padding:
                const EdgeInsets.only(left: 26, right: 15, top: 10, bottom: 10),
            child: Text(
              "Region",
              style: GoogleFonts.roboto(
                  color: Colors.black.withOpacity(0.46),
                  fontSize: 20,
                  fontWeight: FontWeight.w400),
            ),
          ),
        ),
        Padding(
          padding:
              const EdgeInsets.only(left: 26, right: 15, top: 10, bottom: 5),
          child: Row(
            children: [
              Text(
                "Select Region",
                style: GoogleFonts.roboto(
                    color: Colors.black,
                    fontSize: 16,
                    fontWeight: FontWeight.w500),
              ),
              Spacer(),
              Text(
                "India",
                style: GoogleFonts.roboto(
                    color: Colors.blue,
                    fontSize: 17,
                    fontWeight: FontWeight.w400),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
