
class Iteam{
  final int  id;
  final String name;
  final String desc;
  final int price;
  final String color;
  final String image;

  Iteam({this.id, this.name, this.desc, this.price, this.color, this.image});
  factory Iteam.fromMap(Map<dynamic,dynamic>map)
  {
    return Iteam(
      id: map["id"],
      name: map["name"],
      desc: map["desc"],
      price: map["price"],
      color: map["color"],
      image: map["image"]
    );
  }
  tomap()=>{
  "id":id,
  "name":name,
  "desc":desc,
  "price":price,
    "color":color,
    "image":image
  };

}
class CatlogModel {
  static final catlogModel=CatlogModel._internal();
  CatlogModel._internal();
  factory CatlogModel()=>catlogModel;
  static List<Iteam> Items;

  Iteam getById(int id) => Items.firstWhere((element) => element.id== id,orElse: null);
}