class CategoryModel {
  CategoryModel({
    required this.categoryList,
  });

  List<CategoryList> categoryList;

  factory CategoryModel.fromJson(Map<String, dynamic> json) => CategoryModel(
    categoryList: List<CategoryList>.from(json["categoryList"].map((x) => CategoryList.fromJson(x))),
  );

}

class CategoryList {
  CategoryList({
    required this.id,
    required this.icon,
    required this.name,
  });

  int id;
  String icon;
  String name;

  factory CategoryList.fromJson(Map<String, dynamic> json) => CategoryList(
    id: json["id"] ,
    icon: json["icon"],
    name: json["name"],
  );

}
