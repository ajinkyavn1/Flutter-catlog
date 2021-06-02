import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:frist_flutter/Models/Catlog.dart';
import 'package:frist_flutter/TheamData/TheamData.dart';
import 'package:velocity_x/velocity_x.dart';
import 'package:velocity_x/velocity_x.dart';
class CartPage extends StatelessWidget {
  final Iteam iteam;

  const CartPage({Key key, @required this.iteam}) :assert(Iteam!=null),super(key: key);


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: context.canvasColor,
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.transparent,
        title: "Cart".text.center.color(context.accentColor).make(),

      ),
      body: Column(
        children: [
          Placeholder().p32().expand(),
          Divider(),
          _CartToatal()
        ],
      ),
    );
  }
}
class _CartToatal extends StatelessWidget {


  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height:200,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          "\$900".text.xl4.color(context.accentColor).make(),
          30.widthBox,
          ElevatedButton(onPressed: (){},
              style: ButtonStyle(
                backgroundColor: MaterialStateProperty.all(context.theme.buttonColor)
              ),


              child: "Buy".text.make()
          ).w32(context)
        ],
      ),
    );

  }
}
