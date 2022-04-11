class CategoryModel {
  List<Category>? categoryList;
  CategoryModel({this.categoryList});

  factory CategoryModel.fromJson(List<dynamic> parsedJson) {
    List<Category> categoryList = <Category>[];
    categoryList = parsedJson.map((e) => Category.fromJson(e)).toList();
    return CategoryModel(
      categoryList: categoryList,
    );
  }
}
class Category {
  int? id;
  String? name;
  String? image;
  int? parentId;
  int? position;
  int? status;
  String? createdAt;
  String? updatedAt;
  int? priority;

  Category(
      {this.id,
        this.name,
        this.image,
        this.parentId,
        this.position,
        this.status,
        this.createdAt,
        this.updatedAt,
        this.priority});

  factory Category.fromJson(Map<String, dynamic> json) {
    return Category(
      id: json['id'],
      name: json['name'],
      image: json['image'],
      parentId: json['parent_id'],
      position: json['position'],
      status: json['status'],
      createdAt: json['created_at'],
      updatedAt: json['updated_at'],
      priority: json['priority'],
    );
  }
}

