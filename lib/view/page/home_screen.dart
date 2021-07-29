import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:turn_live/view/page/signin_page.dart';

class HomeScreenPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('My Flutter App'),
      ),
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        currentIndex: 2, // this will be set when a new tab is tapped
        items: [
          BottomNavigationBarItem(
            icon: new Icon(Icons.home),
            title: new Text('Home'),
          ),
          BottomNavigationBarItem(
            icon: new Icon(Icons.home),
            title: new Text('Home'),
          ),
          BottomNavigationBarItem(
            icon: new Icon(Icons.mail),
            title: new Text('Messages'),
          ),
          BottomNavigationBarItem(
            icon: new Icon(Icons.ac_unit_outlined),
            title: new Text('Messages'),
          ),
          BottomNavigationBarItem(
              icon: Icon(Icons.person), title: Text('Profile'))
        ],
      ),
    );
  }

  HomeScreenBody() {
    return Padding(
      padding: const EdgeInsets.all(16),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SizedBox(
            height: 100,
          ),
          Align(
            alignment: Alignment.topLeft,
            child: Text(
              "Information",
              style:
                  GoogleFonts.roboto(fontSize: 32, fontWeight: FontWeight.w500),
            ),
          ),
          Text(
            "Please fill Gender and age to moving further",
            style: GoogleFonts.roboto(
                fontSize: 20,
                fontWeight: FontWeight.w400,
                color: Colors.black.withOpacity(0.5)),
          ),
          SizedBox(
            height: 60,
          ),
          Text(
            "Gender",
            style:
                GoogleFonts.roboto(fontWeight: FontWeight.w400, fontSize: 19),
          ),
          Row(
            children: [
              Text("Male",
                  style: GoogleFonts.roboto(
                      fontWeight: FontWeight.w400, fontSize: 19)),
              Radio(
                value: 1,
                groupValue: 1,
                onChanged: (value) {},
              ),
              Text("Female",
                  style: GoogleFonts.roboto(
                      fontWeight: FontWeight.w400, fontSize: 19)),
              Radio(
                value: 2,
                groupValue: 1,
                onChanged: (value) {},
              ),
            ],
          ),
          SizedBox(
            height: 20,
          ),
          Text(
            "Date of Birth",
            style:
                GoogleFonts.roboto(fontWeight: FontWeight.w400, fontSize: 19),
          ),
          SizedBox(
            height: 10,
          ),
          Row(
            children: [
              Container(
                width: 100,
                decoration: BoxDecoration(
                  color: Color(0xFFF2F2F7),
                  borderRadius: BorderRadius.circular(6),
                ),
                child: TextField(
                  decoration: InputDecoration(
                    hintStyle: TextStyle(fontSize: 17),
                    hintText: 'Date',
                    border: InputBorder.none,
                    contentPadding: EdgeInsets.all(20),
                  ),
                ),
              ),
              Spacer(),
              Container(
                width: 100,
                decoration: BoxDecoration(
                  color: Color(0xFFF2F2F7),
                  borderRadius: BorderRadius.circular(6),
                ),
                child: TextField(
                  decoration: InputDecoration(
                    hintStyle: TextStyle(fontSize: 17),
                    hintText: 'Month',
                    border: InputBorder.none,
                    contentPadding: EdgeInsets.all(20),
                  ),
                ),
              ),
              Spacer(),
              Container(
                width: 100,
                decoration: BoxDecoration(
                  color: Color(0xFFF2F2F7),
                  borderRadius: BorderRadius.circular(6),
                ),
                child: TextField(
                  decoration: InputDecoration(
                    hintStyle: TextStyle(fontSize: 17),
                    hintText: 'Year',
                    border: InputBorder.none,
                    contentPadding: EdgeInsets.all(20),
                  ),
                ),
              ),
            ],
          ),
          SizedBox(
            height: 40,
          ),
          ElevatedButton(
              onPressed: () {
                Get.to(SignInPage());
              },
              style: ElevatedButton.styleFrom(
                  primary: Color(0xFFEF5843),
                  onPrimary: Colors.white,
                  shadowColor: Colors.black,
                  elevation: 50,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10),
                  )),
              child: SizedBox(
                  width: 343,
                  height: 48,
                  child: Center(
                    child: Text(
                      "Sign Up",
                      style: GoogleFonts.roboto(
                          fontSize: 17, fontWeight: FontWeight.w500),
                    ),
                  ))),
        ],
      ),
    );
  }
}
