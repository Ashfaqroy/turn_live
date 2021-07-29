import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:turn_live/view/page/signin_page.dart';

class WelcomePage extends StatelessWidget {
  const WelcomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        image: DecorationImage(
            image: AssetImage("assets/images/welcome.png"),
            fit: BoxFit.cover,
            colorFilter: ColorFilter.mode(
                Colors.black.withOpacity(0.4), BlendMode.darken)),
      ),
      child: Scaffold(
        backgroundColor: Colors.transparent,
        body: WelcomeBody(),
      ),
    );
  }

  WelcomeBody() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.end,
      children: [
        SizedBox(
          height: 500,
        ),
        Padding(
          padding: const EdgeInsets.only(left: 16,right: 16),
          child: ElevatedButton(
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
        ),
        SizedBox(
          height: 13,
        ),
        Padding(
          padding: const EdgeInsets.only(left: 16,right: 16),
          child: ElevatedButton(
              onPressed: () {},
              style: ElevatedButton.styleFrom(
                  primary: Color(0xFFFFFFFF),
                  onPrimary: Colors.black,
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
                      "Sign up",
                      style: GoogleFonts.roboto(
                          fontSize: 17, fontWeight: FontWeight.w500),
                    ),
                  ))),
        ),
      ],
    );
  }
}
