class Coffee {
  String name;
  String desc;
  Category category;
  double price;
  double rating;
  String image;

  Coffee({
    required this.name,
    required this.desc,
    required this.category,
    required this.image,
    required this.price,
    required this.rating,
  });
}

enum Category { foam, espresso, latte }
