import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:velocity_x/velocity_x.dart';

class MyTheam
{

  static ThemeData lightTheme(BuildContext context) => ThemeData(
    appBarTheme: AppBarTheme(
        iconTheme: IconThemeData(color: Colors.black),
        backgroundColor: Colors.white,
        elevation:15,
        textTheme:Theme.of(context).textTheme
    ),
    cardColor: Colors.white,
    canvasColor: creamColor,
    buttonColor: darkblue,
    accentColor: darkblue,
    primarySwatch: Colors.deepPurple,
    fontFamily: GoogleFonts.poppins().fontFamily,
  );
  static ThemeData darkTheme(BuildContext context)=>ThemeData(
    brightness: Brightness.dark,
    cardColor: Colors.black,
    canvasColor: darkcreamcolor,
    buttonColor: lightblue,
    accentColor: Colors.white,
    appBarTheme: AppBarTheme(
        iconTheme: IconThemeData(color: Colors.white ),
        backgroundColor: Colors.white,
        elevation:15,

        textTheme:Theme.of(context).textTheme
    ),

    primarySwatch: Colors.deepPurple,
    fontFamily: GoogleFonts.poppins().fontFamily,
  );
static Color creamColor=Color(0xfff5f5f5);
  static Color darkblue=Color(0xff403b58);
  static Color darkcreamcolor=Vx.gray900;
  static Color lightblue=Vx.indigo500;

}