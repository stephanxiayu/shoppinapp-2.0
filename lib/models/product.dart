class ProductModel{
    static const BRAND = "brand";
  static const ID = "id";
  static const IMAGE = "image";
  static const NAME = "name";

  static const PRICE = "price";
String brand;
   String id;
   String image;
   String name;
   
   double price;

  ProductModel({this.brand, this.id, this.image, this.name,  this.price});

  ProductModel.fromMap(Map<String, dynamic> data){
      brand = data[BRAND] as String;
    id = data[ID]as String;
    image = data[IMAGE]as String;
    name = data[NAME]as String;
  
    price = data[PRICE].toDouble();
  }

}