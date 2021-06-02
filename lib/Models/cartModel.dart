import 'package:frist_flutter/Models/Catlog.dart';

class CartModel{

  static final cartModel=CartModel._internal();
  CartModel._internal();
  factory CartModel()=>cartModel;
CatlogModel _cartCatlog;
final List<int> _ItemIds=[];
  CatlogModel get catalog=>_cartCatlog;

  set catalog(CatlogModel newCatlog)
  {
    assert (newCatlog!=null);
    _cartCatlog=newCatlog;
  }
  List<Iteam>get iteams=>_ItemIds.map((id) => _cartCatlog.getById(id)).toList();

  num get totalprice=>iteams.fold(0, (total,current) => current.price+totalprice);
  void add(Iteam iteam)
  {
    _ItemIds.add(iteam.id);
  }
  void remove(Iteam iteam)
  {
    _ItemIds.remove(iteam.id);
  }
}
