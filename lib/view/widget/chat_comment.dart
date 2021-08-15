import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class ChatTemplate extends StatelessWidget {
  const ChatTemplate({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Row(
        children: [
          Container(
            height: 32,
            width: 62,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(16),
                color: Colors.black.withOpacity(0.42)),
            child: Center(
              child: Text(
                "Hello!!",
                style: GoogleFonts.roboto(
                    color: Colors.white,
                    fontSize: 12,
                    fontWeight: FontWeight.w400),
              ),
            ),
          ),
          Spacer(),
          Container(
            height: 32,
            width: 83,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(16),
                color: Colors.black.withOpacity(0.42)),
            child: Center(
              child: Text(
                "How's you",
                style: GoogleFonts.roboto(
                    color: Colors.white,
                    fontSize: 12,
                    fontWeight: FontWeight.w400),
              ),
            ),
          ),
          Spacer(),
          Container(
            height: 32,
            width: 36,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(16),
                color: Colors.black.withOpacity(0.42)),
            child: Center(
              child: Text("🤣", style: TextStyle(fontFamily: 'NotoEmoji')),
            ),
          ),
          Spacer(),
          Container(
            height: 32,
            width: 36,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(16),
                color: Colors.black.withOpacity(0.42)),
            child: Center(
              child: Text("🐣", style: TextStyle(fontFamily: 'NotoEmoji')),
            ),
          ),
          Spacer(),
          Container(
            height: 32,
            width: 36,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(16),
                color: Colors.black.withOpacity(0.42)),
            child: Center(
              child: Text("🤑", style: TextStyle(fontFamily: 'NotoEmoji')),
            ),
          ),
          Spacer(),
          Container(
            height: 32,
            width: 62,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(16),
                color: Colors.black.withOpacity(0.42)),
            child: Center(
              child: Text(
                "Great",
                style: GoogleFonts.roboto(
                    color: Colors.white,
                    fontSize: 14,
                    fontWeight: FontWeight.w400),
              ),
            ),
          ),
          Spacer(),
        ],
      ),
    );
  }
}
