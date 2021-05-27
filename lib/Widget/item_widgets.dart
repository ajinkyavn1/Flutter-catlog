import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:frist_flutter/Models/Catlog.dart';

class CatlogWidget extends StatelessWidget {
  final Iteam iteam;
  const CatlogWidget({Key key,@required this.iteam}) :assert(iteam!=null), super(key: key);

  @override
  Widget build(BuildContext context) {

    return Card(
      clipBehavior: Clip.antiAlias,
      elevation:12,
      shape:RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)) ,
      child: GridTile(
        header: Container(
          padding: EdgeInsets.all(12),
            decoration: BoxDecoration(
              color: Colors.deepPurple
            ),
            child: Text(iteam.name,style: TextStyle(color: Colors.white),)
        ),
        child: Image.network(iteam.image,fit: BoxFit.cover,),
        footer:  Container(
            padding: EdgeInsets.all(12),
            decoration: BoxDecoration(
                color: Colors.deepPurple
            ),
            child: Text("\$${iteam.price}",style: TextStyle(color: Colors.white),)
        ),
      ),
      );
    //);
    // return Card(
    //   shape: StadiumBorder() ,
    //   child: ListTile(
    //     onTap: (){
    //       print("${iteam.name } is od");
    //     },
    //     leading: Image.network(iteam.image),
    //     title: Text(iteam.name),
    //     subtitle: Text(iteam.desc),
    //     trailing: Text("\$${iteam.price}",style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold),),
    //   ),
    // );
  }
}
