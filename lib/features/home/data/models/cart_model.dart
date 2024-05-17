
class CartModel {
  Product product;
  int price;
  int count;

  CartModel({
    required this.product,
    required this.price,
    required this.count
  });

  factory CartModel.fromJson(json) {
    return CartModel(

      product: Product.fromJson(json['product']),
      price: json['price'] as int, count: json['count'] as int,
    );
  }

}

class Product {
  String sId;
  String title;
  String imageCover;

  Product({
    required this.sId,
    required this.title,
    required this.imageCover,

  });

  factory Product.fromJson(json) {
    return Product(
      sId: json['_id'] as String,
      title: json['title'] as String,
      imageCover: json['imageCover'] as String,
    );
  }

  Map<String, dynamic> toJson() => {
    '_id': sId,
    'title': title,
    'imageCover': imageCover,
  };
}


