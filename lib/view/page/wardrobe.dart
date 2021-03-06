import 'package:buttons_tabbar/buttons_tabbar.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';

class WardrobePage extends StatelessWidget {
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
        //crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10), color: Colors.red),
            height: 136,
            child: Row(
              children: [
                SizedBox(
                  width: 20,
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    SizedBox(
                      height: 40,
                    ),
                    Text(
                      "Sell Reward",
                      style: GoogleFonts.roboto(
                          color: Colors.white,
                          fontSize: 20,
                          fontWeight: FontWeight.w700),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Text(
                      "Today???s highest token balance wins!",
                      style: GoogleFonts.roboto(
                          color: Colors.white,
                          fontSize: 14,
                          fontWeight: FontWeight.w400),
                    ),
                    SizedBox(
                      height: 5,
                    ),
                    Text(
                      "Contest Ends in: 12h 18m",
                      style: GoogleFonts.roboto(
                          color: Colors.white,
                          fontSize: 12,
                          fontWeight: FontWeight.w700),
                    ),
                  ],
                ),
                Spacer(),
                Column(
                  children: [
                    SizedBox(
                      height: 20,
                    ),
                    Image.asset(
                      "assets/images/award.png",
                      height: 110,
                      fit: BoxFit.fill,
                      width: 100,
                    ),
                  ],
                )
              ],
            ),
          ),
          SizedBox(
            height: 13,
          ),
          Expanded(
            child: DefaultTabController(
              length: 2,
              child: Column(
                children: <Widget>[
                  Container(
                    decoration: BoxDecoration(
                      border: Border.all(),
                      borderRadius: BorderRadius.circular(6),
                    ),
                    child: TabBar(
                      indicator: BoxDecoration(
                          borderRadius:
                              BorderRadius.circular(0), // Creates border
                          color: Colors.red),
                      unselectedLabelStyle: TextStyle(color: Colors.white),
                      labelStyle: TextStyle(
                          color: Colors.black, fontWeight: FontWeight.bold),
                      tabs: [
                        Tab(
                          child: Text(
                            "Sell Reward",
                            style: TextStyle(color: Colors.black),
                          ),
                        ),
                        Tab(
                          child: Text(
                            "Purchase",
                            style: TextStyle(color: Colors.black),
                          ),
                        ),
                      ],
                    ),
                  ),
                  Expanded(
                    child: TabBarView(
                      children: <Widget>[
                        Expanded(
                          child:
                              ListView.builder(itemBuilder: (context, index) {
                            return Card(
                              child: Container(
                                height: 70,
                                child: Row(
                                  children: [
                                    SizedBox(
                                      width: 10,
                                    ),
                                    Container(
                                      height: 24,
                                      width: 24,
                                      decoration: BoxDecoration(
                                          color: Color(0xFFF37401),
                                          borderRadius:
                                              BorderRadius.circular(12)),
                                      child:
                                          Center(child: Text(index.toString())),
                                    ),
                                    SizedBox(
                                      width: 36,
                                    ),
                                    Image.asset(
                                      "assets/images/dolor.png",
                                      height: 25,
                                      fit: BoxFit.fill,
                                      width: 25,
                                    ),
                                    SizedBox(
                                      width: 10,
                                    ),
                                    Text(
                                      "12,524 K",
                                      style: GoogleFonts.roboto(
                                          fontSize: 16,
                                          fontWeight: FontWeight.w400),
                                    ),
                                    Spacer(),
                                    ElevatedButton(
                                        onPressed: () {},
                                        child: SizedBox(
                                            width: 70,
                                            height: 30,
                                            child:
                                                Center(child: Text("Sell")))),
                                    SizedBox(
                                      width: 10,
                                    ),
                                  ],
                                ),
                              ),
                            );
                          }),
                        ),
                        Center(
                          child: Icon(Icons.directions_transit),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
