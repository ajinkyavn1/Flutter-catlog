import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:frist_flutter/Pages/Home_Page.dart';
import 'package:frist_flutter/Pages/Login_Page.dart';
void main()
{
  runApp(MyApp( ));
}

class MyApp extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      //home:HomePage(),
      themeMode: ThemeMode.light,
     theme: ThemeData(primarySwatch: Colors.deepPurple),
     darkTheme: ThemeData(brightness: Brightness.dark),
     routes: {
       "/":(context)=>HomePage(),
      "/Login_Page":(context)=>LoginPage()
     },
    );
  }
}
