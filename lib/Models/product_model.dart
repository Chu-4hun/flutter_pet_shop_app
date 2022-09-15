class Product {
  Product({
    required this.id,
    required this.categoryId,
    required this.makerId,
    required this.title,
    required this.description,
    required this.price,
    this.deletedAt,
    required this.codeSantehnika,
    required this.rating,
    required this.url,
    required this.imgUrl,
    required this.categoryName,
    required this.makerName,
  });

  int id;
  int categoryId;
  int makerId;
  String title;
  String description;
  int price;
  dynamic deletedAt;
  String codeSantehnika;
  int rating;
  String url;
  String imgUrl;
  String categoryName;
  String makerName;

  factory Product.fromJson(Map<String, dynamic> json) => Product(
        id: json["id"],
        categoryId: json["category_id"],
        makerId: json["maker_id"],
        title: json["title"],
        description: json["description"],
        price: json["price"],
        deletedAt: json["deleted_at"],
        codeSantehnika: json["code_santehnika"],
        rating: json["rating"],
        url: json["url"],
        imgUrl: json["img_url"],
        categoryName: json["category_name"],
        makerName: json["maker_name"],
      );

  Map<String, dynamic> toJson() => {
        "id": id,
        "category_id": categoryId,
        "maker_id": makerId,
        "title": title,
        "description": description,
        "price": price,
        "deleted_at": deletedAt,
        "code_santehnika": codeSantehnika,
        "rating": rating,
        "url": url,
        "img_url": imgUrl,
        "category_name": categoryName,
        "maker_name": makerName,
      };
}
