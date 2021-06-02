import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:frist_flutter/Models/Catlog.dart';
import 'package:frist_flutter/Models/cartModel.dart';
import 'package:velocity_x/velocity_x.dart';

class AddToCart extends StatefulWidget {
  final Iteam catalog;
  const AddToCart({Key key, this.catalog})
      : assert(catalog!=null), super(key: key);

  @override
  _AddToCartState createState() => _AddToCartState();
}

class _AddToCartState extends State<AddToCart> {
  final _cart=CartModel();
  @override
  Widget build(BuildContext context) {
    bool isAdded=_cart.iteams.contains(widget.catalog)??false;
    return ElevatedButton(
        style: ButtonStyle(
            shape: MaterialStateProperty.all(StadiumBorder()),
            backgroundColor: MaterialStateProperty.all(context.theme.buttonColor)
        ),
        onPressed: (){
          if(isAdded)
          {
            ScaffoldMessenger.of(context).showSnackBar(SnackBar(content: "Already In Cart".text.xl.make()));
          }else
          {
            isAdded=isAdded.toggle();
            final _catlog=CatlogModel();

            _cart.catalog=_catlog;
            _cart.add(widget.catalog);
            setState(() {

            });
          }


        },
        child:isAdded
            ?Icon(Icons.done)
            :Icon(Icons.add)
    );
  }
}

