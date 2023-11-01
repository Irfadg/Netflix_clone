import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class MainTextWithStyle extends StatelessWidget {
 final String text;
 final double fontsize;

 
  const MainTextWithStyle({super.key, required this.text, required this.fontsize,});

  @override
  Widget build(BuildContext context) {
    return Text(text,
    style: GoogleFonts.montserrat(
      fontSize: fontsize,
      fontWeight: FontWeight.bold,
    ),
);
  }
}



class ContentTextWithStyle extends StatelessWidget {
 final String text;
 final double fontsize;

 
  const ContentTextWithStyle({super.key, required this.text, required this.fontsize,});

  @override
  Widget build(BuildContext context) {
    return Text(text,
    style: GoogleFonts.montserrat(

      fontSize: fontsize,
      fontWeight: FontWeight.w400,
    ),
);
  }
}


class ButtenTextWithStyle extends StatelessWidget {
 final String text;
 final double fontsize;

 
  const ButtenTextWithStyle({super.key, required this.text, required this.fontsize,});

  @override
  Widget build(BuildContext context) {
    return Text(text,
    style: GoogleFonts.montserrat(

      fontSize: fontsize,
      fontWeight: FontWeight.bold,
    ),
);
  }
}