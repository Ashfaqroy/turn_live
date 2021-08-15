import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:turn_live/view/widget/bottombar.dart';

import 'user_profile.dart';

class EditProfilePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
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
                "Edit Profile",
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
      child: Padding(
        padding: const EdgeInsets.all(16),
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.only(
                top: 5,
              ),
              child: Container(
                decoration: BoxDecoration(
                  color: Color(0xFFC4C4C4).withOpacity(0.32),
                  borderRadius: BorderRadius.circular(6),
                ),
                child: TextFormField(
                  decoration: InputDecoration(
                    hintStyle: TextStyle(fontSize: 17),
                    hintText: 'Username',
                    border: InputBorder.none,
                    contentPadding: EdgeInsets.all(20),
                  ),
                ),
              ),
            ),
            SizedBox(
              height: 5,
            ),
            Padding(
              padding: const EdgeInsets.only(
                top: 5,
              ),
              child: Container(
                decoration: BoxDecoration(
                  color: Color(0xFFC4C4C4).withOpacity(0.32),
                  borderRadius: BorderRadius.circular(6),
                ),
                child: TextFormField(
                  decoration: InputDecoration(
                    hintStyle: TextStyle(fontSize: 17),
                    hintText: 'John Doe',
                    border: InputBorder.none,
                    contentPadding: EdgeInsets.all(20),
                  ),
                ),
              ),
            ),
            SizedBox(
              height: 5,
            ),
            Padding(
              padding: const EdgeInsets.only(
                top: 5,
              ),
              child: Container(
                decoration: BoxDecoration(
                  color: Color(0xFFC4C4C4).withOpacity(0.32),
                  borderRadius: BorderRadius.circular(6),
                ),
                child: TextFormField(
                  decoration: InputDecoration(
                    hintStyle: TextStyle(fontSize: 17),
                    hintText: 'Bio',
                    border: InputBorder.none,
                    contentPadding: EdgeInsets.all(20),
                  ),
                ),
              ),
            ),
            SizedBox(
              height: 5,
            ),
            Padding(
              padding: const EdgeInsets.only(
                top: 5,
              ),
              child: Container(
                decoration: BoxDecoration(
                  color: Color(0xFFC4C4C4).withOpacity(0.32),
                  borderRadius: BorderRadius.circular(6),
                ),
                child: TextFormField(
                  decoration: InputDecoration(
                    hintStyle: TextStyle(fontSize: 17),
                    hintText: 'Website',
                    border: InputBorder.none,
                    contentPadding: EdgeInsets.all(20),
                  ),
                ),
              ),
            ),
            SizedBox(
              height: 5,
            ),
            Padding(
              padding: const EdgeInsets.only(
                top: 5,
              ),
              child: Container(
                decoration: BoxDecoration(
                  color: Color(0xFFC4C4C4).withOpacity(0.32),
                  borderRadius: BorderRadius.circular(6),
                ),
                child: TextFormField(
                  decoration: InputDecoration(
                    hintStyle: TextStyle(fontSize: 17),
                    hintText: 'Male',
                    border: InputBorder.none,
                    contentPadding: EdgeInsets.all(20),
                  ),
                ),
              ),
            ),
            SizedBox(
              height: 5,
            ),
            Padding(
              padding: const EdgeInsets.only(
                top: 5,
              ),
              child: Container(
                decoration: BoxDecoration(
                  color: Color(0xFFC4C4C4).withOpacity(0.32),
                  borderRadius: BorderRadius.circular(6),
                ),
                child: TextFormField(
                  decoration: InputDecoration(
                    hintStyle: TextStyle(fontSize: 17),
                    hintText: 'DOB',
                    border: InputBorder.none,
                    contentPadding: EdgeInsets.all(20),
                  ),
                ),
              ),
            ),
            SizedBox(
              height: 5,
            ),
            Padding(
              padding: const EdgeInsets.only(
                top: 5,
              ),
              child: Container(
                decoration: BoxDecoration(
                  color: Color(0xFFC4C4C4).withOpacity(0.32),
                  borderRadius: BorderRadius.circular(6),
                ),
                child: TextFormField(
                  decoration: InputDecoration(
                    hintStyle: TextStyle(fontSize: 17),
                    hintText: 'Email',
                    border: InputBorder.none,
                    contentPadding: EdgeInsets.all(20),
                  ),
                ),
              ),
            ),
            SizedBox(
              height: 10,
            ),
            SizedBox(
              height: 48,
              child: ElevatedButton(
                style: ElevatedButton.styleFrom(),
                onPressed: () =>Get.to(() => UserProfilePage()),
                child: Center(
                  child: Text(
                    "Save",
                    style: GoogleFonts.roboto(
                        color: Colors.white,
                        fontSize: 14,
                        fontWeight: FontWeight.w500),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
