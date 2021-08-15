import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:turn_live/view/widget/chat.dart';
import 'package:turn_live/view/widget/chat_comment.dart';

class StreamingPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          image: DecorationImage(
              image: AssetImage("assets/images/welcome.png"),
              fit: BoxFit.cover)),
      child: Scaffold(
        body: _Body(),
        backgroundColor: Colors.transparent,
      ),
    );
  }

  _Body() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        SizedBox(
          height: 30,
        ),
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: Row(
            children: [
              Container(
                height: 32,
                width: 109,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(16),
                    color: Colors.black.withOpacity(0.32)),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    CircleAvatar(
                      radius: 12,
                      backgroundImage: AssetImage("assets/images/welcome.png"),
                    ),
                    SizedBox(
                      width: 5,
                    ),
                    Text(
                      "Username",
                      style: GoogleFonts.roboto(
                          color: Colors.white,
                          fontSize: 14,
                          fontWeight: FontWeight.w400),
                    ),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Container(
                  height: 32,
                  width: 60,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(16),
                      color: Colors.black),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Icon(
                        Icons.star,
                        color: Colors.amber,
                        size: 18,
                      ),
                      SizedBox(
                        width: 5,
                      ),
                      Text(
                        "12",
                        style: GoogleFonts.roboto(
                            color: Colors.white,
                            fontSize: 14,
                            fontWeight: FontWeight.w400),
                      ),
                    ],
                  ),
                ),
              ),
              Spacer(),
              Container(
                height: 32,
                width: 100,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(16),
                    color: Colors.black.withOpacity(0.32)),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Icon(
                      Icons.visibility_outlined,
                      color: Colors.white,
                    ),
                    SizedBox(
                      width: 5,
                    ),
                    Text(
                      "13,789",
                      style: GoogleFonts.roboto(
                          color: Colors.white,
                          fontSize: 14,
                          fontWeight: FontWeight.w400),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
        Container(
          height: 32,
          width: 108,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(16),
            color: Color(0xFFFBBF00).withOpacity(0.12),
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              ImageIcon(
                AssetImage("assets/images/dolor.png"),
                color: Colors.amber,
              ),
              SizedBox(
                width: 5,
              ),
              Text(
                "13,789",
                style: GoogleFonts.roboto(
                    color: Colors.amber,
                    fontSize: 14,
                    fontWeight: FontWeight.w400),
              ),
            ],
          ),
        ),
        Spacer(),
        Container(
          child: Align(
            alignment: Alignment.centerRight,
            child: Container(
              height: 180,
              width: 58,
              decoration: BoxDecoration(
                color: Colors.black.withOpacity(0.55),
                borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(19),
                    bottomLeft: Radius.circular(19)),
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  SizedBox(
                    height: 15,
                  ),
                  CircleAvatar(
                    child: ImageIcon(AssetImage("assets/icons/share.png"), color: Colors.white),
                    backgroundColor: Color(0xFF7C7C7C).withOpacity(0.60),
                  ),
                  Spacer(),
                  CircleAvatar(
                    child: ImageIcon(AssetImage("assets/images/dolor.png"), color: Colors.white),
                    backgroundColor: Color(0xFF7C7C7C).withOpacity(0.60),
                  ),
                  Spacer(),
                  CircleAvatar(
                    child: Icon(CupertinoIcons.back, color: Colors.white),
                    backgroundColor: Color(0xFF7C7C7C).withOpacity(0.60),
                  ),
                  SizedBox(
                    height: 15,
                  ),
                ],
              ),
            ),
          ),
        ),
        Spacer(),
        Expanded(
          child: ListView.builder(
            itemCount: 10,
            itemBuilder: (context, index) {
              return Chat();
            },
          ),
        ),
        ChatTemplate(),
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: Row(
            children: [
              Container(
                width: 250,
                decoration: BoxDecoration(
                  color: Color(0xFF666666).withOpacity(0.60),
                  borderRadius: BorderRadius.circular(30),
                ),
                child: TextField(
                  decoration: InputDecoration(
                    hintStyle: TextStyle(fontSize: 17, color: Colors.white),
                    hintText: 'Type here...',
                    suffixIcon: Icon(Icons.send, color: Colors.white),
                    border: InputBorder.none,
                    contentPadding: EdgeInsets.all(20),
                  ),
                ),
              ),
              Spacer(),
              FloatingActionButton(
                onPressed: () {},
                child: Icon(Icons.add,color: Color(0xFF0DD9C5),),
                backgroundColor: Color(0xFF666666).withOpacity(0.60),
              ),
              Spacer(),
              FloatingActionButton(
                onPressed: () {},
                child: ImageIcon(AssetImage("assets/icons/gift.png",),color: Color(0xFFEDFF82),),
                backgroundColor: Color(0xFF666666).withOpacity(0.60),
              )
            ],
          ),
        )
      ],
    );
  }
}
