import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:frist_flutter/Models/Catlog.dart';
import 'package:frist_flutter/Pages/HomeDeatails.dart';
import 'package:frist_flutter/Pages/Home_Page.dart';

import 'Catlog_Iteam.dart';

class CatlogList extends StatelessWidget {
  const CatlogList({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      shrinkWrap: true,
      itemCount: CatlogModel.Items.length,
      itemBuilder: (context,index){
        final catlog=CatlogModel.Items[index];
        return InkWell(
          onTap: ()=>Navigator.push(context, MaterialPageRoute(builder: (contex)=>HomeDetailsPage(Catlog: catlog))),
            child: CatlogIteam(Catlog:catlog)
        );
      },
    );
  }
}