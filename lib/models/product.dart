class Product {
  final int price;
  final String id, titile, category, image, subTitle, description;
  Product({
    this.id,
    this.price,
    this.title,
    this.category,
    this.image,
    this.subTitle,
    this.description,
  });
  //create category
  factory Product.fromJson(Map<String, dynamic> json) {
    return Product(
      id: json["id"],
      title: json["title"],
      image: json["image"],
      price: json["price"],
      category: json["category"],
      subTitle: json["subTitle"],
      description: json["description"],
    );
  }
}

Product product = Product(
  id: "1",
  price: 16000,
  title: "wood frame",
  image: "assets/images/image_1.png",
  category: "chair",
  subTitle: "Tieon armchair",
  description: description,
);
String description =
    "this armchair is an elegant and functional piece of furniture";
