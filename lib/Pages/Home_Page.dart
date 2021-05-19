import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:frist_flutter/Models/Catlog.dart';
import 'package:frist_flutter/Widget/Drawer.dart';
import 'package:frist_flutter/Widget/item_widgets.dart';
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
    int days=30;
    return Scaffold(
      appBar: AppBar(title: Text("This App is catlog. App")),

      drawer: MyDrawer(),
      body:(CatlogModel.Items!=null && CatlogModel.Items.isNotEmpty)
          ?ListView.builder(
        itemCount: CatlogModel.Items.length,
        itemBuilder: (context,index){
          return CatlogWidget(iteam: CatlogModel.Items[index],);
        },
      ):Center(
        child: CircularProgressIndicator(),
      ),
    );
  }


}
