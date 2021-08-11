import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';

class HomeScreenPage extends StatelessWidget {
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
        body: HomeScreenBody(),
      ),
    );
  }

  HomeScreenBody() {
    return Padding(
      padding: const EdgeInsets.all(16),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            children: [
              Icon(
                Icons.chat_bubble,
                color: Colors.black,
              ),
              Spacer(),
              Icon(
                Icons.bookmark,
                color: Colors.black,
              ),
              SizedBox(
                height: 20,
              ),
              Icon(
                Icons.notifications_none_outlined,
                color: Colors.black,
              ),
            ],
          )
        ],
      ),
    );
  }
}
