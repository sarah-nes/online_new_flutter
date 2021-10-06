import 'dart:convert';

class Category {
  final String id, title, image;
  final int numOfProducts;
  // ignore: unnecessary_this
  Category({
    this.id,
    this.title,
    this.image,
    this.numOfProducts,
  });
  //create category
  factory Category.fromJson(Map<String, dynamic> Json) {
    return Category(
      id: json["id"],
      title: json["title"],
      image: json["image"],
      numOfProducts: json["numOfProducts"],
    );
  }
}

Category category = Category(
  id: "1",
  title: "armchair",
  image: "https://i.imgur.com/JqKDxj.png",
  numOfProducts: 100,
);
