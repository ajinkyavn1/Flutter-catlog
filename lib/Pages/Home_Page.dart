import 'dart:convert';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:frist_flutter/Core/State.dart';
import 'package:frist_flutter/Models/Catlog.dart';
import 'package:frist_flutter/Models/cartModel.dart';
import 'package:frist_flutter/Pages/Routes.dart';
import 'package:frist_flutter/Widget/Home_Widget/Catlog_list.dart';
import 'package:frist_flutter/Widget/Home_Widget/Header_widget.dart';
import 'package:velocity_x/velocity_x.dart';
import 'package:http/http.dart' as http;
class HomePage extends StatefulWidget {
  const HomePage({Key key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final url="https://api.jsonbin.io/b/604dbddb683e7e079c4eefd3";
  @override
  void initState() {
    super.initState();
    loadData();

  }
  void loadData() async{
    await Future.delayed(Duration(seconds: 2));
    // var catlogjson= await rootBundle.loadString("assets/files/catlog.json");
    final  response=await http.get(Uri.parse(url));
    final catlogjson=response.body;
    final decodedjson=jsonDecode(catlogjson);
    var products=decodedjson["products"];
   CatlogModel.Items=List.from(products).map<Iteam>((iteam) =>Iteam.fromMap(iteam)).toList();
   setState(() {
   });
  }
  @override
  Widget build(BuildContext context) {
    final CartModel _Cart=(VxState.store as  MyStore).cart;
    return Scaffold(
      floatingActionButton: VxConsumer(
        mutations: {AddMutation,RemoveMutation},
        builder: (context,_){
          return FloatingActionButton(
            tooltip: "Cart",

            child: Icon(CupertinoIcons.cart,color: Colors.white,),
            onPressed: (){
              Navigator.pushNamed(context, MyRoutes.CartPage);
            },
            backgroundColor:context.theme.buttonColor ,

          ).badge(
              color:Vx.red500,
              count:_Cart.iteams.length,
              size: 25,
              textStyle: TextStyle(
                color: Colors.black
              )
          );
        },
        notifications: {},


      ),
      backgroundColor: Theme.of(context).canvasColor,
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



