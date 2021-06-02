import 'package:frist_flutter/Core/State.dart';
import 'package:frist_flutter/Models/Catlog.dart';
import 'package:velocity_x/velocity_x.dart';

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

  num get totalprice=>iteams.fold(0, (total,current) => current.price+total);
  void add(Iteam iteams)
  {
    _ItemIds.add(iteams.id);
  }
  void remove(Iteam iteams)
  {
    _ItemIds.remove(iteams.id);
  }
}

class AddMutation extends VxMutation<MyStore>
{
  final Iteam iteams;

  AddMutation(this.iteams);
  @override
  perform() {
    store.cart.add(iteams);
  }

}
class RemoveMutation extends VxMutation<MyStore>
{
  final Iteam iteams;

  RemoveMutation(this.iteams);
  @override
  perform() {
    store.cart.remove(iteams);
  }

}

