import 'package:collection/collection.dart';
import 'package:flutter/material.dart';
import 'package:foodapp/models/cart_item.dart';
import 'package:foodapp/models/food.dart';
import 'package:intl/intl.dart';

class Restaurants extends ChangeNotifier {
  final List<Food> _menu = [
    // Burgers category
    Food(
      name: 'Cheeseburger',
      description: 'Juicy cheeseburger with fresh ingredients',
      imagePath: 'assets/images/cheeseburger.jpg',
      price: 50,
      category: FoodCategory.burgers,
      avaibleAddons: [
        Addon(name: 'Lettuce', price: 5),
        Addon(name: 'Tomato', price: 3),
        Addon(name: 'Onions', price: 2),
      ],
    ),
    Food(
      name: 'Chicken Burger',
      description: 'Crispy chicken patty with tangy sauce',
      imagePath: 'assets/images/ChickenBurger.jpg',
      price: 55,
      category: FoodCategory.burgers,
      avaibleAddons: [
        Addon(name: 'Cheese', price: 10),
        Addon(name: 'Pickles', price: 3),
        Addon(name: 'Bacon', price: 12),
      ],
    ),
    Food(
      name: 'Double Patty Burger',
      description: 'Two beef patties stacked high',
      imagePath: 'assets/images/DoublePattyBurger.jpg',
      price: 70,
      category: FoodCategory.burgers,
      avaibleAddons: [
        Addon(name: 'Extra Patty', price: 20),
        Addon(name: 'Jalapenos', price: 5),
        Addon(name: 'Mustard', price: 3),
      ],
    ),
    Food(
      name: 'Veggie Burger',
      description: 'Healthy burger with a mix of vegetables',
      imagePath: 'assets/images/VeggieBurger.jpg',
      price: 45,
      category: FoodCategory.burgers,
      avaibleAddons: [
        Addon(name: 'Avocado', price: 15),
        Addon(name: 'Mushrooms', price: 10),
        Addon(name: 'Hummus', price: 7),
      ],
    ),
    Food(
      name: 'BBQ Burger',
      description: 'Smoky BBQ sauce with a beef patty',
      imagePath: 'assets/images/BBQBurger.jpg',
      price: 60,
      category: FoodCategory.burgers,
      avaibleAddons: [
        Addon(name: 'BBQ Sauce', price: 5),
        Addon(name: 'Onion Rings', price: 7),
        Addon(name: 'Cheddar Cheese', price: 10),
      ],
    ),

    // Drinks category
    Food(
      name: 'Coca Cola',
      description: 'Refreshing Coca Cola',
      imagePath: 'assets/images/CocaCola.jpg',
      price: 20,
      category: FoodCategory.drinks,
      avaibleAddons: [
        Addon(name: 'Ice', price: 2),
        Addon(name: 'Lemon', price: 3),
      ],
    ),
    Food(
      name: 'Pepsi',
      description: 'Chilled Pepsi with a great fizz',
      imagePath: 'assets/images/pepsi.jpg',
      price: 20,
      category: FoodCategory.drinks,
      avaibleAddons: [
        Addon(name: 'Mint', price: 4),
        Addon(name: 'Lime', price: 2),
      ],
    ),
    Food(
      name: 'Orange Juice',
      description: 'Freshly squeezed orange juice',
      imagePath: 'assets/images/OrangeJuice.jpg',
      price: 30,
      category: FoodCategory.drinks,
      avaibleAddons: [
        Addon(name: 'Ice', price: 2),
        Addon(name: 'Mint', price: 5),
      ],
    ),
    Food(
      name: 'Lemonade',
      description: 'Cool and tangy lemonade',
      imagePath: 'assets/images/Lemonade.jpg',
      price: 25,
      category: FoodCategory.drinks,
      avaibleAddons: [
        Addon(name: 'Honey', price: 7),
        Addon(name: 'Lime', price: 3),
      ],
    ),
    Food(
      name: 'Iced Tea',
      description: 'Cold and refreshing tea',
      imagePath: 'assets/images/IcedTea.jpg',
      price: 28,
      category: FoodCategory.sides,
      avaibleAddons: [
        Addon(name: 'Lemon', price: 4),
        Addon(name: 'Mint', price: 5),
      ],
    ),

    // Salads category
    Food(
      name: 'Caesar Salad',
      description: 'Classic salad with Caesar dressing',
      imagePath: 'assets/images/CaesarSalad.jpg',
      price: 40,
      category: FoodCategory.salads,
      avaibleAddons: [
        Addon(name: 'Croutons', price: 5),
        Addon(name: 'Parmesan', price: 7),
      ],
    ),
    Food(
      name: 'Greek Salad',
      description: 'Fresh salad with feta cheese and olives',
      imagePath: 'assets/images/GreekSalad.jpg',
      price: 35,
      category: FoodCategory.salads,
      avaibleAddons: [
        Addon(name: 'Olives', price: 5),
        Addon(name: 'Feta Cheese', price: 8),
      ],
    ),
    Food(
      name: 'Cobb Salad',
      description: 'Salad with chicken, bacon, and avocado',
      imagePath: 'assets/images/CobbSalad.jpg',
      price: 50,
      category: FoodCategory.salads,
      avaibleAddons: [
        Addon(name: 'Bacon', price: 12),
        Addon(name: 'Blue Cheese', price: 10),
      ],
    ),
    Food(
      name: 'Pasta Salad',
      description: 'Salad with cold pasta and vegetables',
      imagePath: 'assets/images/PastaSalad.jpg',
      price: 45,
      category: FoodCategory.salads,
      avaibleAddons: [
        Addon(name: 'Pesto', price: 8),
        Addon(name: 'Cherry Tomatoes', price: 4),
      ],
    ),
    Food(
      name: 'Avocado Salad',
      description: 'Healthy salad with fresh avocado slices',
      imagePath: 'assets/images/AvocadoSalad.jpg',
      price: 40,
      category: FoodCategory.sides,
      avaibleAddons: [
        Addon(name: 'Sesame Seeds', price: 3),
        Addon(name: 'Lime Dressing', price: 4),
      ],
    ),

    // Desserts category
    Food(
      name: 'Chocolate Cake',
      description: 'Rich and moist chocolate cake',
      imagePath: 'assets/images/ChocolateCake.jpg',
      price: 60,
      category: FoodCategory.desserts,
      avaibleAddons: [
        Addon(name: 'Whipped Cream', price: 5),
        Addon(name: 'Cherries', price: 3),
      ],
    ),
    Food(
      name: 'Fruit Salad',
      description: 'Mix of fresh fruits',
      imagePath: 'assets/images/FruitSalad.jpg',
      price: 35,
      category: FoodCategory.desserts,
      avaibleAddons: [
        Addon(name: 'Yogurt', price: 10),
        Addon(name: 'Honey', price: 7),
      ],
    ),
    Food(
      name: 'Tiramisu',
      description: 'Delicious coffee-flavored dessert',
      imagePath: 'assets/images/Tiramisu.jpg',
      price: 55,
      category: FoodCategory.desserts,
      avaibleAddons: [
        Addon(name: 'Cocoa Powder', price: 3),
        Addon(name: 'Extra Coffee', price: 5),
      ],
    ),
    Food(
      name: 'Brownie',
      description: 'Fudgy and rich chocolate brownie',
      imagePath: 'assets/images/Brownie.jpg',
      price: 45,
      category: FoodCategory.sides,
      avaibleAddons: [
        Addon(name: 'Ice Cream', price: 10),
        Addon(name: 'Nuts', price: 7),
      ],
    ),
    Food(
      name: 'Pancakes',
      description: 'Fluffy pancakes with syrup',
      imagePath: 'assets/images/Pancakes.jpg',
      price: 30,
      category: FoodCategory.sides,
      avaibleAddons: [
        Addon(name: 'Maple Syrup', price: 5),
        Addon(name: 'Blueberries', price: 6),
      ],
    ),
  ];

  List<Food> get menu => _menu;
  List<CartItem> get cart => _cart;

  //Operations cart

  //user cart
  final List<CartItem> _cart = [];

  //add to cart
  void addToCart(Food food, List<Addon> selectedAddons) {
    //see if there is cart have item
    CartItem? cartItem = _cart.firstWhereOrNull((item) {
      bool isSameFood = item.food == food;

      bool isSameAddons =
          // ignore: prefer_const_constructors
          ListEquality().equals(item.selectedAddon, selectedAddons);
      return isSameFood && isSameAddons;
    });

    if (cartItem != null) {
      cartItem.quantity++;
    } else {
      _cart.add(CartItem(food: food, selectedAddon: selectedAddons));
    }
    notifyListeners();
  }

  removeFromCart(CartItem cartItem) {
    int cartIndex = _cart.indexOf(cartItem);
    // ignore: unrelated_type_equality_checks
    if (cartItem != -1) {
      if (_cart[cartIndex].quantity > 1) {
        _cart[cartIndex].quantity--;
      } else {
        _cart.removeAt(cartIndex);
      }
    }
    notifyListeners();
  }

  //total price
  double getTotalPrice() {
    double total = 0.0;

    for (CartItem cartItem in _cart) {
      double itemTotal = cartItem.food.price;
      for (Addon addon in cartItem.selectedAddon) {
        itemTotal += addon.price;
      }

      total += itemTotal * cartItem.quantity;
    }
    return total;
  }

  int getTotalItemCount() {
    int totalItemCount = 0;

    for (CartItem cartItem in _cart) {
      totalItemCount += cartItem.quantity;
    }
    return totalItemCount;
  }

  void clearCart() {
    _cart.clear();
    notifyListeners();
  }

  // generete reciepte
  String displayCartReceipt() {
    final reciept = StringBuffer();
    reciept.writeln("Her's your receipt");
    reciept.writeln();

    //format date
    String formatDate =
        DateFormat('yyyy-MM-dd HH:mm:ss').format(DateTime.now());
    reciept.writeln(formatDate);
    reciept.writeln();
    reciept.write("--------");
    reciept.writeln();
    for (final cartItem in _cart) {
      reciept.writeln(
          "${cartItem.quantity} x ${cartItem.food.name} - ${_formatPrice(cartItem.food.price)}");
      if (cartItem.selectedAddon.isNotEmpty) {
        reciept.writeln("  Add-ons: ${_formatAddons(cartItem.selectedAddon)}");
      }
      reciept.writeln();
    }
    reciept.write("--------");
    reciept.writeln();
    reciept.writeln("Total items: ${getTotalItemCount()}");
    reciept.writeln("Total price: ${_formatPrice(getTotalPrice())}");

    return reciept.toString();
  }

  String _formatPrice(double price) {
    return "\$ ${price.toStringAsFixed(2)}";
  }

  String _formatAddons(List<Addon> addons) {
    return addons
        .map((addon) => "${addon.name} (${_formatPrice(addon.price)})")
        .join(", ");
  }
}
