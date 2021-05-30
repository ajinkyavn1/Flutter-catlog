import 'dart:convert';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:frist_flutter/Models/Catlog.dart';
import 'package:frist_flutter/TheamData/TheamData.dart';
import 'package:velocity_x/velocity_x.dart';
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
      backgroundColor: TheamData().creamColor,
      body: SafeArea(
        child: Container(
          padding: Vx.m32,
          child:Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Header(),
              if(CatlogModel.Items!=null&&CatlogModel.Items.isNotEmpty)
                Products().expand()
              else
                Center(
                  child: CircularProgressIndicator(),
                )
            ],
          )
        ),
      ),
    );
  }


}
class Header extends StatelessWidget {
  const Header({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child:Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          "Catlog App".text.xl5.bold.color(TheamData().darkblue).make(),
          "Treanding Products".text.xl2.make(),


        ],
      ),
    );
  }
}
class Products extends StatelessWidget {
  const Products({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      shrinkWrap: true,
      itemCount: CatlogModel.Items.length,
      itemBuilder: (context,index){
        final catlog=CatlogModel.Items[index];
        return CatlogIteam(Catlog:catlog);
      },
    );
  }
}
class CatlogIteam extends StatelessWidget {
  final Iteam Catlog;
  const CatlogIteam({Key key,@required this.Catlog}) :assert(Catlog!=null),
        super(key: key);
  @override
  Widget build(BuildContext context) {
    return VxBox(
      child: Row(
        children: [
         Images(
           image: Catlog.image,
         ),
          Expanded(child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Catlog.name.text.lg.bold.color(TheamData().darkblue).make(),
              Catlog.desc.text.textStyle(context.captionStyle).make(),
              ButtonBar(
                alignment: MainAxisAlignment.spaceBetween,
                buttonPadding: Vx.mH8,
                children: [
                  "\$${Catlog.price}".text.bold.xl.make(),
                  ElevatedButton(
                      onPressed: (){},
                      child: "Buy".text.make()
                  )
                ],
              )
            ],
          ))
        ],
      )
    ).white.rounded.square(150).make().py16();
  }
}
class Images extends StatelessWidget {
  final String image;

  const Images({Key key,@required this.image}) :assert(image!=null), super(key: key);
  @override
  Widget build(BuildContext context) {
    return  Image.network(image).box.rounded.py8.color(TheamData().creamColor).make().py16().w40(context);
  }
}

