class Food {
  final String name;
  final String description;
  final String imagePath;
  final double price;
  final FoodCategory category;
  List<Addon> avaibleAddons;

  Food({
    required this.name,
    required this.description,
    required this.imagePath,
    required this.price,
    required this.category,
    required this.avaibleAddons,
  });
}

//food Categories 
enum FoodCategory {
  burgers, 
  salads,
  sides,
  desserts,
  drinks,
}

class Addon {
  String name;
  double price;
  Addon({
    required this.name,
    required this.price,
  });
}