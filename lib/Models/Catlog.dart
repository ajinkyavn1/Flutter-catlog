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
class CatlogModel{
  static List<Iteam> Items=[
    Iteam(
        id: 2,
        name: "Pixel 5",
        desc: "Google Pixel phone 5th generation",
        price: 699,
        color: "#00ac51",
        image: "https://www.telstra.com.au/content/dam/tcom/lego/2020/plans-devices/mobiles/google-pixel-5/shared-google-pixel-5-black-05-900x1200.png"
    ),
  ];
}