class CoursesModel {
  int id;
  String categoryId;
  String title;
  String description;
  String price;

  CoursesModel({
    this.id,
    this.categoryId,
    this.title,
    this.description,
    this.price,
  });

  CoursesModel.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    categoryId = json['category_id'];
    title = json['title'];
    description = json['description'];
    price = json['price'];
  }
}
