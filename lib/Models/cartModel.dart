import 'package:frist_flutter/Models/Catlog.dart';

class CartModel{
CatlogModel _cartCatlog;
final List<int> _ItemIds=[];
  CatlogModel get catalog=>_cartCatlog;

  set catalog(CatlogModel catlogModel)
  {
    assert (catalog!=null);
    _cartCatlog=catlogModel;
  }
  List<Iteam>get iteam=>_ItemIds.map((id) => _cartCatlog.getById(id)).toList();

  num get totalprice=>iteam.fold(0, (total,current) => current.price+totalprice);
  void add(Iteam iteam)
  {
    _ItemIds.add(iteam.id);
  }
  void remove(Iteam iteam)
  {
    _ItemIds.remove(iteam.id);
  }
}
