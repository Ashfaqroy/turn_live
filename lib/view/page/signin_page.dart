import 'package:flutter/cupertino.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:turn_live/view/page/signup_page.dart';

class SignInPage extends StatelessWidget {
  TextEditingController passwordcontroller = TextEditingController();

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
              child: Icon(
                CupertinoIcons.back, color: Colors.blue),
                onTap: () => Navigator.of(context).pop(),
            ),
            Text(
          "Back",
          style: GoogleFonts.roboto(
              fontSize: 16, fontWeight: FontWeight.w500, color: Colors.blue),
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
        children: [
          Align(
            alignment: Alignment.topLeft,
            child: Text(
              "Login",
              style:
                  GoogleFonts.roboto(fontSize: 32, fontWeight: FontWeight.w500),
            ),
          ),
          Align(
            alignment: Alignment.topLeft,
            child: Text(
              "Enter your email address and password to access your account",
              style: GoogleFonts.roboto(
                  fontSize: 20,
                  fontWeight: FontWeight.w400,
                  color: Colors.black.withOpacity(0.5)),
            ),
          ),
          SizedBox(
            height: 102,
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
          Align(
            alignment: Alignment.topRight,
            child: Padding(
              padding: const EdgeInsets.only(left: 16, right: 16),
              child: Text(
                "Forget Password?",
                style: GoogleFonts.roboto(
                    fontSize: 16,
                    fontWeight: FontWeight.w400,
                    color: Colors.blue),
              ),
            ),
          ),
          SizedBox(
            height: 20,
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
                      "Login",
                      style: GoogleFonts.roboto(
                          fontSize: 17, fontWeight: FontWeight.w500),
                    ),
                  ))),
          Spacer(),
          RichText(
              text: TextSpan(children: [
            TextSpan(
                text: "Don't Have an Account ?",
                style: GoogleFonts.roboto(
                    fontSize: 16,
                    fontWeight: FontWeight.w500,
                    color: Colors.black)),
            TextSpan(
                text: " SING UP",
                style: GoogleFonts.roboto(
                    fontSize: 16,
                    fontWeight: FontWeight.w500,
                    color: Colors.blue),
                recognizer: TapGestureRecognizer()
                  ..onTap = () {
                    Get.to(() => SignUpPage());
                  })
          ])),
        ],
      ),
    );
  }
}
