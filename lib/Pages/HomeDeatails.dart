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
      appBar: AppBar(backgroundColor:Colors.transparent,elevation: 0,),
      bottomNavigationBar: Container(
        color: Colors.white,
        child: ButtonBar(
          alignment: MainAxisAlignment.spaceBetween,
          buttonPadding: EdgeInsets.zero,
          children: [
            "\$${Catlog.price}".text.bold.xl4.red500.make(),
            ElevatedButton(
                style: ButtonStyle(
                    shape: MaterialStateProperty.all(StadiumBorder()),
                    backgroundColor: MaterialStateProperty.all(TheamData().darkblue)
                ),
                onPressed: (){},
                child: "Add to Cart".text.make()
            ).wh(120,50)
          ],
        ).p32(),
      ),

      backgroundColor: TheamData().creamColor,
      body: SafeArea(
        bottom: false,

        child: Column(
          children: [
            Hero(
              tag: Key(Catlog.id.toString()),
                child: Image.network(Catlog.image)
            ).h32(context),
            Expanded(
                child:VxArc(
                  height: 30,
                  arcType: VxArcType.CONVEY,
                  edge: VxEdge.TOP,
                  child: Container(
                    width: context.screenWidth,
                    color: Colors.white,
                    child: Column(
                      children: [
                        Catlog.name.text.xl4.bold.color(TheamData().darkblue).make(),
                        Catlog.desc.text.xl.textStyle(context.captionStyle).make(),
                        "Technology, which brings together tools to promote development, use and information exchange, has as its main objective of making tasks easier and the solving of many problems of mankind. When technology progresses and makes our lives even more convenient, we must stress how beneficial it is to our lives".text
                        .textStyle(context.captionStyle).make().p16(),
                        10.heightBox,
                      ],
                    ).py64(),
                  ),
                ) ,
            )
          ],
        )
      ),
    );
  }
}
