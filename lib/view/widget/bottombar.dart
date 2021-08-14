import 'package:flutter/material.dart';

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
    );
  }
}
