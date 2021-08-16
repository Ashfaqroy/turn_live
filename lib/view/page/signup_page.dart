import 'package:flutter/cupertino.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:turn_live/view/page/select_gender_page.dart';
import 'package:turn_live/view/page/signin_page.dart';

class SignUpPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        automaticallyImplyLeading: false, // Don't show the leading button
        elevation: 0,
        backgroundColor: Colors.white,
        title: Row(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            GestureDetector(
              child: Icon(CupertinoIcons.back, color: Colors.blue),
              onTap: () => Navigator.of(context).pop(),
            ),
            Text(
              "Back",
              style: GoogleFonts.roboto(
                  fontSize: 18,
                  fontWeight: FontWeight.w500,
                  color: Colors.blue),
            ),
          ],
        ),
      ),
      body: SignInBody(),
    );
  }

  SignInBody() {
    return Padding(
      padding: const EdgeInsets.all(16),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Align(
            alignment: Alignment.topLeft,
            child: Text(
              "SignUp",
              style:
                  GoogleFonts.roboto(fontSize: 32, fontWeight: FontWeight.w500),
            ),
          ),
          Text(
            "Please fill information to create an account and sign up to continue",
            style: GoogleFonts.roboto(
                fontSize: 20,
                fontWeight: FontWeight.w400,
                color: Colors.black.withOpacity(0.5)),
          ),
          SizedBox(
            height: 60,
          ),
          Padding(
            padding: const EdgeInsets.only(
              top: 20,
            ),
            child: Container(
              width: 343,
              decoration: BoxDecoration(
                color: Color(0xFFF2F2F7),
                borderRadius: BorderRadius.circular(6),
              ),
              child: TextField(
                decoration: InputDecoration(
                  hintStyle: TextStyle(fontSize: 17),
                  hintText: 'Email',
                  border: InputBorder.none,
                  contentPadding: EdgeInsets.all(20),
                ),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(
              top: 5,
            ),
            child: Container(
              width: 343,
              decoration: BoxDecoration(
                color: Color(0xFFF2F2F7),
                borderRadius: BorderRadius.circular(6),
              ),
              child: TextFormField(
                decoration: InputDecoration(
                  hintStyle: TextStyle(fontSize: 17),
                  hintText: 'Password',
                  suffixIcon: Icon(
                    Icons.visibility,
                  ),
                  border: InputBorder.none,
                  contentPadding: EdgeInsets.all(20),
                ),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(
              top: 5,
            ),
            child: Container(
              width: 343,
              decoration: BoxDecoration(
                color: Color(0xFFF2F2F7),
                borderRadius: BorderRadius.circular(6),
              ),
              child: TextFormField(
                decoration: InputDecoration(
                  hintStyle: TextStyle(fontSize: 17),
                  hintText: 'Enter Mobile Number',
                  suffix: Text("Verify",
                      style: GoogleFonts.roboto(
                          fontSize: 15,
                          fontWeight: FontWeight.w400,
                          color: Colors.blue)),
                  border: InputBorder.none,
                  contentPadding: EdgeInsets.all(20),
                ),
              ),
            ),
          ),
          SizedBox(
            height: 20,
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
          ElevatedButton(
              onPressed: () {
                Get.to(() => SelectGenderPage());
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
          Spacer(),
          Center(
            child: RichText(
                text: TextSpan(children: [
              TextSpan(
                text: "Already have an account? ",
                style: GoogleFonts.roboto(
                    fontSize: 16,
                    fontWeight: FontWeight.w500,
                    color: Colors.black),
              ),
              TextSpan(
                  text: "LogIn",
                  style: GoogleFonts.roboto(
                      fontSize: 16,
                      fontWeight: FontWeight.w500,
                      color: Colors.blue),
                  recognizer: TapGestureRecognizer()
                    ..onTap = () {
                      Get.to(() => SelectGenderPage());
                    })
            ])),
          ),
        ],
      ),
    );
  }
}
