import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:turn_live/view/page/streaming.dart';
import 'package:turn_live/view/page/videos_screen.dart';
import 'package:turn_live/view/widget/bottombar.dart';

class HomeScreenPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        bottomNavigationBar: BottomBar(),
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
              ImageIcon(AssetImage("assets/icons/comment.png"),
                  color: Colors.black),
              Spacer(),
              ImageIcon(AssetImage("assets/icons/medal.png"),
                  color: Colors.black),
              SizedBox(
                height: 20,
              ),
              ImageIcon(AssetImage("assets/icons/bell.png"),
                  color: Colors.black),
            ],
          ),
          SizedBox(
            height: 20,
          ),
          Row(
            children: [
              ImageIcon(AssetImage("assets/icons/event.png"),
                  color: Colors.black),
              SizedBox(
                width: 5,
              ),
              Text(
                "Event",
                style: GoogleFonts.roboto(
                    color: Colors.black,
                    fontSize: 14,
                    fontWeight: FontWeight.w400),
              ),
              Spacer(),
              Container(
                height: 38,
                width: 90,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(4), color: Colors.red),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    ImageIcon(AssetImage("assets/icons/whatshot.png"),
                        color: Colors.amber),
                    SizedBox(
                      width: 5,
                    ),
                    Text(
                      "Hot",
                      style: GoogleFonts.roboto(
                          color: Colors.black,
                          fontSize: 14,
                          fontWeight: FontWeight.w400),
                    ),
                  ],
                ),
              ),
              Spacer(),
              IconButton(
                icon: Icon(
                  Icons.live_tv,
                ),
                color: Colors.black,
                onPressed: () {
                  Get.to(() => VideosScreenPage());
                },
              ),
              SizedBox(
                width: 5,
              ),
              Text(
                "Live+",
                style: GoogleFonts.roboto(
                    color: Colors.black,
                    fontSize: 14,
                    fontWeight: FontWeight.w400),
              ),
              Spacer(),
              ImageIcon(AssetImage("assets/icons/music.png"),
                  color: Colors.black),
              SizedBox(
                width: 5,
              ),
              Text(
                "Music",
                style: GoogleFonts.roboto(
                    color: Colors.black,
                    fontSize: 14,
                    fontWeight: FontWeight.w400),
              )
            ],
          ),
          SizedBox(
            height: 10,
          ),
          Container(
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10), color: Colors.red),
            height: 150,
            child: Row(
              children: [
                SizedBox(
                  width: 10,
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    SizedBox(
                      height: 40,
                    ),
                    Text(
                      "WIN \$10!",
                      style: GoogleFonts.roboto(
                          color: Colors.white,
                          fontSize: 20,
                          fontWeight: FontWeight.w700),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Text(
                      "Today’s highest token balance wins!",
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
                      width: 90,
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
              length: 4,
              child: Column(
                children: <Widget>[
                  Container(
                    height: 30,
                    child: TabBar(
                      indicator: BoxDecoration(
                          borderRadius:
                              BorderRadius.circular(0), // Creates border
                          color: Color(0xFFF1F1F1)),
                      unselectedLabelStyle: TextStyle(color: Colors.white),
                      labelStyle: TextStyle(
                          color: Colors.black, fontWeight: FontWeight.bold),
                      tabs: [
                        Tab(
                          child: Text(
                            "All",
                            style: TextStyle(fontSize: 12, color: Colors.black),
                          ),
                        ),
                        Tab(
                          child: Text(
                            "Category 1",
                            style: TextStyle(fontSize: 12, color: Colors.black),
                          ),
                        ),
                        Tab(
                          child: Text(
                            "Category 4",
                            style: TextStyle(fontSize: 12, color: Colors.black),
                          ),
                        ),
                        Tab(
                          child: Text(
                            "Category 3",
                            style: TextStyle(fontSize: 12, color: Colors.black),
                          ),
                        ),
                      ],
                    ),
                  ),
                  Expanded(
                    child: TabBarView(
                      children: <Widget>[
                        Expanded(
                          child: GridView.builder(

                            scrollDirection: Axis.vertical,
                            shrinkWrap: true,
                            itemCount: 10,
                            gridDelegate:
                                SliverGridDelegateWithFixedCrossAxisCount(
                                    crossAxisCount: 2,
                                    childAspectRatio: 2 / 2.5,
                                    crossAxisSpacing: 5,
                                    mainAxisSpacing: 5),
                            itemBuilder: (context, index) {
                              return Stack(
                                children: [
                                  InkWell(
                                    onTap: (){
                                      Get.to(() => StreamingPage());
                                    },
                                    child: ClipRRect(
                                      borderRadius: BorderRadius.circular(10),
                                      child: Image.asset(
                                        "assets/images/homepic.png",
                                        height: 200,
                                        width: 190,
                                        fit: BoxFit.fill,
                                      ),
                                    ),
                                  ),
                                  Align(
                                    alignment: Alignment.bottomCenter,
                                    child: Row(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.end,
                                      mainAxisAlignment:
                                          MainAxisAlignment.start,
                                      children: [
                                        Padding(
                                          padding: const EdgeInsets.all(5.0),
                                          child: Column(
                                            mainAxisAlignment:
                                                MainAxisAlignment.end,
                                            children: [
                                              Text(
                                                "Omid Amin",
                                                style: GoogleFonts.roboto(
                                                    color: Colors.white,
                                                    fontSize: 12,
                                                    fontWeight:
                                                        FontWeight.w600),
                                              ),
                                              Text(
                                                "Usrad stram",
                                                style: GoogleFonts.roboto(
                                                    color: Colors.white,
                                                    fontSize: 10,
                                                    fontWeight:
                                                        FontWeight.w400),
                                              ),
                                            ],
                                          ),
                                        ),
                                        Spacer(),
                                        Padding(
                                          padding: const EdgeInsets.all(8.0),
                                          child: Container(
                                            width: 60,
                                            height: 25,
                                            color: Colors.black,
                                            child: Row(
                                              crossAxisAlignment:
                                                  CrossAxisAlignment.center,
                                              mainAxisAlignment:
                                                  MainAxisAlignment.center,
                                              children: [
                                                Icon(
                                                  Icons.star,
                                                  size: 15,
                                                  color: Colors.amber,
                                                ),
                                                Text(
                                                  "Level 12",
                                                  style: GoogleFonts.roboto(
                                                      color: Colors.white,
                                                      fontSize: 12,
                                                      fontWeight:
                                                          FontWeight.w500),
                                                ),
                                              ],
                                            ),
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                ],
                              );
                            },
                          ),
                        ),
                        Center(
                          child: Icon(Icons.directions_transit),
                        ),
                        Center(
                          child: Icon(Icons.directions_transit),
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
