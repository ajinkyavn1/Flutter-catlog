import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:frist_flutter/Core/State.dart';
import 'package:frist_flutter/Pages/Cart_Page.dart';
import 'package:frist_flutter/Pages/Home_Page.dart';
import 'package:frist_flutter/Pages/Login_Page.dart';
import 'package:frist_flutter/Pages/Routes.dart';
import 'package:frist_flutter/TheamData/TheamData.dart';
import 'package:velocity_x/velocity_x.dart';
void main()
{
  runApp(VxState(store:MyStore(), child: MyApp( )));
}

class MyApp extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false, //write false if you want to remove debug batch
      //home:HomePage(),
      themeMode: ThemeMode.system,
     theme: MyTheam.lightTheme(context),
     darkTheme: MyTheam.darkTheme(context),
    initialRoute:MyRoutes.homepage ,
     routes: {
      MyRoutes.homepage:(context)=>HomePage(),
      MyRoutes.LoginPage:(context)=>LoginPage(),
      MyRoutes.CartPage:(context)=>CartPage(),
     },
    );
  }
}
