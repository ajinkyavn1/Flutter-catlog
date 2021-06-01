import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:frist_flutter/Models/Catlog.dart';
import 'package:frist_flutter/Pages/Cart_Page.dart';
import 'package:frist_flutter/TheamData/TheamData.dart';
import 'package:velocity_x/velocity_x.dart';

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
                Catlog.name.text.lg.bold.color(TheamData().darkblue).make(),
                Catlog.desc.text.textStyle(context.captionStyle).make(),
                10.heightBox,
                ButtonBar(
                  alignment: MainAxisAlignment.spaceBetween,
                  buttonPadding: EdgeInsets.zero,
                  children: [
                    "\$${Catlog.price}".text.bold.xl.make(),
                    ElevatedButton(
                        style: ButtonStyle(
                            shape: MaterialStateProperty.all(StadiumBorder()),
                            backgroundColor: MaterialStateProperty.all(TheamData().darkblue)
                        ),
                        onPressed: (){
                          Navigator.push(context,MaterialPageRoute(builder:(context)=> CartPage()));
                        },
                        child:"Add to Cart".text.make()
                    )
                  ],
                ).pOnly(right: 8.0)
              ],
            ))
          ],
        )
    ).white.rounded.square(150).make().py16();
  }
}

