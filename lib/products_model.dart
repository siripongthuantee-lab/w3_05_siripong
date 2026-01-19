class Product {
  final String id;
  final String name;
  final String photo;
  final String price;
  final String weight;
  final String description;

  Product({
    required this.id,
    required this.name,
    required this.photo,
    required this.price,
    required this.weight,
    required this.description,
  });

  factory Product.fromJson(Map<String, dynamic> json) {
    return Product(
      id: json['id'].toString(),
      name: json['name'],
      photo: json['photo'],
      price: json['price'].toString(),
      weight: json['weight'].toString(),
      description: json['description'],
    );
  }
}
