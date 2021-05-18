import 'package:flutter/material.dart';
import 'package:frist_flutter/Widget/Drawer.dart';
class HomePage extends StatelessWidget {
  const HomePage({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    int days=30;
    return Scaffold(
      appBar: AppBar(title: Text("This App is catlog. App")),

      drawer: MyDrawer(),
      body:Center(
        child: Container(
          child: Text("Jdg$days"),
        ),
      ),
    );
  }
}
