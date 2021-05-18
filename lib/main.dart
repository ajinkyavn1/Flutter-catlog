import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:frist_flutter/Pages/Home_Page.dart';
import 'package:frist_flutter/Pages/Login_Page.dart';
import 'package:frist_flutter/Pages/Routes.dart';
import 'package:google_fonts/google_fonts.dart';
void main()
{
  runApp(MyApp( ));
}

class MyApp extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: true, //write false if you want to remove debug batch
      //home:HomePage(),
      themeMode: ThemeMode.light,
     theme: ThemeData(
       primarySwatch: Colors.deepPurple,
       fontFamily: GoogleFonts.lato().fontFamily,
     ),
     darkTheme: ThemeData(brightness: Brightness.dark),
    initialRoute:MyRoutes.homepage ,
     routes: {
      MyRoutes.homepage:(context)=>HomePage(),
      MyRoutes.LoginPage:(context)=>LoginPage(),
     },
    );
  }
}
