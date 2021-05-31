import 'dart:convert';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:frist_flutter/Models/Catlog.dart';
import 'package:frist_flutter/TheamData/TheamData.dart';
import 'package:frist_flutter/Widget/Home_Widget/Catlog_list.dart';
import 'package:frist_flutter/Widget/Home_Widget/Header_widget.dart';
import 'package:velocity_x/velocity_x.dart';
class HomePage extends StatefulWidget {
  const HomePage({Key key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  void initState() {
    super.initState();
    loadData();

  }
  void loadData() async{
    await Future.delayed(Duration(seconds: 2));
    var catlogjson= await rootBundle.loadString("assets/files/catlog.json");
    final decodedjson=jsonDecode(catlogjson);
    var products=decodedjson["products"];
   CatlogModel.Items=List.from(products).map<Iteam>((iteam) =>Iteam.fromMap(iteam)).toList();
   setState(() {
   });
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(
        child: Icon(CupertinoIcons.cart),
        onPressed: (){},
        backgroundColor: TheamData().darkblue ,
      ),
      backgroundColor: TheamData().creamColor,
      body: SafeArea(
        child: Container(
          padding: Vx.m32,
          child:Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Header(),
              if(CatlogModel.Items!=null&&CatlogModel.Items.isNotEmpty)
                CatlogList().expand()
              else
                  CircularProgressIndicator().centered().expand()

            ],
          )
        ),
      ),
    );
  }


}



