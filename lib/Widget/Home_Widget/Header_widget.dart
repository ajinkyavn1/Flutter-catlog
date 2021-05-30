import 'package:flutter/cupertino.dart';
import 'package:frist_flutter/TheamData/TheamData.dart';
import 'package:velocity_x/velocity_x.dart';

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