class CategoryModel {
  final String image;
  final String name;
  final String categoryId;

  CategoryModel({required this.image, required this.name,required this.categoryId});

  factory CategoryModel.fromJson(json) {
    return CategoryModel(
      image: json['image'],
      name: json['name'],
      categoryId: json['_id']
    );
  }
}
