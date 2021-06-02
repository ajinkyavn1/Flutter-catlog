import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:frist_flutter/Core/State.dart';
import 'package:frist_flutter/Models/Catlog.dart';
import 'package:frist_flutter/Models/cartModel.dart';
import 'package:velocity_x/velocity_x.dart';

class AddToCart extends StatelessWidget {
  final Iteam catalog;
  AddToCart({Key key, this.catalog})
      : assert(catalog!=null), super(key: key);

  @override
  Widget build(BuildContext context) {
    VxState.listen(context,to: [AddMutation,RemoveMutation]);
    final CartModel _cart=(VxState.store as MyStore).cart;
    bool isAdded=_cart.iteams.contains(catalog)??false;
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
            AddMutation(catalog);
          }


        },
        child:isAdded
            ?Icon(Icons.done)
            :Icon(CupertinoIcons.cart_badge_plus)
    );
  }
}

