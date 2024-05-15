class CategoryModel {
  final String image;
  final String name;

  CategoryModel({required this.image, required this.name});

  factory CategoryModel.fromJson(json) {
    return CategoryModel(
      image: json['image'],
      name: json['name'],
    );
  }
}
