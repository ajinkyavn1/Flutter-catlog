import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:frist_flutter/Models/Catlog.dart';
import 'package:frist_flutter/Models/cartModel.dart';
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
          _CartList().p32().expand(),
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
    final _Cart=CartModel();
    return SizedBox(
      height:200,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          "\$${_Cart.totalprice}".text.xl4.color(context.accentColor).make(),
          30.widthBox,
          ElevatedButton(
              onPressed: () {
            ScaffoldMessenger.of(context).showSnackBar(
                SnackBar(
                  content: "Buy Is Not Supported Yet".text.make(),
             )
            );
          },
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
class _CartList extends StatefulWidget {

  @override
  __CartListState createState() => __CartListState();
}

class __CartListState extends State<_CartList> {

  @override
  Widget build(BuildContext context) {
    final _Cart=CartModel();
    return _Cart.iteams?.isEmpty?
        "Cart Is Empty".text.xl3.color(context.accentColor).makeCentered()
        :ListView.builder(
      itemCount: _Cart.iteams.length,
        itemBuilder:(context,index){
          return ListTile(
            leading: Icon(Icons.done),
          trailing: IconButton(

            icon: Icon(CupertinoIcons.cart_badge_minus),
              onPressed: (){
              _Cart.remove(_Cart.iteams[index]);
              setState(() {

              });
              },
            ),
            title: _Cart.iteams[index].name.text.xl.make(),
          );
        }
    );
  }
}

