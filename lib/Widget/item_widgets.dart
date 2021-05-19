import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:frist_flutter/Models/Catlog.dart';

class CatlogWidget extends StatelessWidget {
  final Iteam iteam;
  const CatlogWidget({Key key,@required this.iteam}) :assert(iteam!=null), super(key: key);

  @override
  Widget build(BuildContext context) {

    return Card(
      shape: StadiumBorder() ,
      child: ListTile(
        onTap: (){
          print("${iteam.name } is Preesed");
        },
        leading: Image.network(iteam.image),
        title: Text(iteam.name),
        subtitle: Text(iteam.desc),
        trailing: Text("\$${iteam.price}",style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold),),
      ),
    );
  }
}
