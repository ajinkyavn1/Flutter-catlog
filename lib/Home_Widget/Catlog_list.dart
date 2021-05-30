import 'package:flutter/cupertino.dart';
import 'package:frist_flutter/Models/Catlog.dart';
import 'package:frist_flutter/Pages/Home_Page.dart';

class CatlogList extends StatelessWidget {
  const CatlogList({Key key}) : super(key: key);

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