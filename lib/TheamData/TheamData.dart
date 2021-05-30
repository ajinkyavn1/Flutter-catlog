import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class TheamData
{

  static ThemeData lightTheme(BuildContext context) => ThemeData(
    appBarTheme: AppBarTheme(
        iconTheme: IconThemeData(color: Colors.black),
        backgroundColor: Colors.white,
        elevation:15,
        textTheme:Theme.of(context).textTheme
    ),
    primarySwatch: Colors.deepPurple,
    fontFamily: GoogleFonts.poppins().fontFamily,
  );
final creamColor=Color(0xfff5f5f5);
final darkblue=Color(0xff403b58);

}