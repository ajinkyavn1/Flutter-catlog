import 'package:frist_flutter/Models/Catlog.dart';
import 'package:frist_flutter/Models/cartModel.dart';
import 'package:velocity_x/velocity_x.dart';

class MyStore extends VxStore{
  CatlogModel catlog;
  CartModel cart;
  MyStore(){
    cart =CartModel();
    catlog=CatlogModel();
    cart.catalog=catlog;
  }
}