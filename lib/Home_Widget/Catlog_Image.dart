import 'package:flutter/cupertino.dart';
import 'package:frist_flutter/TheamData/TheamData.dart';
import 'package:velocity_x/velocity_x.dart';

class Images extends StatelessWidget {
  final String image;

  const Images({Key key,@required this.image}) :assert(image!=null), super(key: key);
  @override
  Widget build(BuildContext context) {
    return  Image.network(image).box.rounded.py8.color(TheamData().creamColor).make().py16().w40(context);
  }
}