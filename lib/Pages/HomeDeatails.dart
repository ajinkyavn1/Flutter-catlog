import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:frist_flutter/Models/Catlog.dart';
import 'package:frist_flutter/TheamData/TheamData.dart';
import 'package:velocity_x/velocity_x.dart';
class HomeDetailsPage extends StatelessWidget {
final Iteam Catlog;

  const HomeDetailsPage({Key key,@required this.Catlog}) :assert(Catlog!=null), super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: TheamData().creamColor,
      body: SafeArea(
        child: Column(
          children: [
            Image.network(Catlog.image)
          ],
        ).p16()
      ),
    );
  }
}
