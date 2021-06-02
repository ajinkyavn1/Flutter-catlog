import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:frist_flutter/Models/Catlog.dart';
import 'package:frist_flutter/Models/cartModel.dart';
import 'package:frist_flutter/Pages/Cart_Page.dart';
import 'package:frist_flutter/TheamData/TheamData.dart';
import 'package:velocity_x/velocity_x.dart';

import 'Add_To_Cart.dart';
import 'Catlog_Image.dart';

class CatlogIteam extends StatelessWidget {
  final Iteam Catlog;
  const CatlogIteam({Key key,@required this.Catlog}) :assert(Catlog!=null),
        super(key: key);
  @override
  Widget build(BuildContext context) {
    return VxBox(
        child: Row(
          children: [
            Hero(
              tag: Key(Catlog.id.toString()),
              child: Images(
                image: Catlog.image,
              ),
            ),
            Expanded(child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Catlog.name.text.lg.bold.color(context.theme.accentColor).make(),
                Catlog.desc.text.textStyle(context.captionStyle).make(),
                10.heightBox,
                ButtonBar(
                  alignment: MainAxisAlignment.spaceBetween,
                  buttonPadding: EdgeInsets.zero,
                  children: [
                    "\$${Catlog.price}".text.bold.xl.make(),
                      AddToCart(catalog: Catlog,)
                  ],
                ).pOnly(right: 8.0)
              ],
            ))
          ],
        )
    ).color(context.cardColor).rounded.square(150).make().py16();
  }
}
