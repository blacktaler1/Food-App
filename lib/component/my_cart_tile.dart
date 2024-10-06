import 'package:flutter/material.dart';
import 'package:foodapp/component/my_quantity_selector.dart';
import 'package:foodapp/models/cart_item.dart';
import 'package:foodapp/models/restaurants.dart';
import 'package:provider/provider.dart';

class MyCartTile extends StatelessWidget {
  final CartItem cartItem;
  const MyCartTile({super.key, required this.cartItem});

  @override
  Widget build(BuildContext context) {
    return Consumer<Restaurants>(
      builder: (context, restaurant, child) => Container(
        decoration: BoxDecoration(
          color: Theme.of(context).colorScheme.secondary,
          borderRadius: BorderRadius.circular(8),
        ),
        margin: const EdgeInsets.symmetric(horizontal: 25, vertical: 10),
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  //food image
                  ClipRRect(
                    borderRadius: BorderRadius.circular(8),
                    child: Image.asset(
                      cartItem.food.imagePath,
                      width: 100,
                      height: 100,
                    ),
                  ),
                  const SizedBox(
                    width: 10,
                  ),
                  //food name and price
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(cartItem.food.name),
                      Text('\$${cartItem.food.price}'),
                      const SizedBox(height: 10,),
                      //increment
                      MyQuantitySelector(
                        quantity: cartItem.quantity,
                        food: cartItem.food,
                        onIncrement: () {
                          restaurant.addToCart(
                              cartItem.food, cartItem.selectedAddon);
                        },
                        onDecrement: () {
                          restaurant.removeFromCart(cartItem);
                        },
                      ),
                    ],
                  ),
                  const Spacer(),
                  // increment or decrement quantity
                ],
              ),
            ),
            //addons
            SizedBox(
              height: cartItem.selectedAddon.isEmpty ? 0 : 60,
              child: ListView(
                padding: const EdgeInsets.only(left: 10, right: 10, bottom: 10),
                scrollDirection: Axis.horizontal,
                children: cartItem.selectedAddon
                    .map(
                      (addon) => Padding(
                        padding: const EdgeInsets.only(right: 8.0),
                        child: FilterChip(
                          label: Row(
                            children: [
                              Text(addon.name),
                              const SizedBox(
                                width: 5,
                              ),
                              Text(
                                '\$${addon.price}',
                                style: TextStyle(
                                  color: Theme.of(context).colorScheme.primary,
                                ),
                              ),
                            ],
                          ),
                          onSelected: (value) {},
                          shape: StadiumBorder(
                              side: BorderSide(
                            color: Theme.of(context).colorScheme.primary,
                          )),
                          labelStyle: TextStyle(
                            color: Theme.of(context).colorScheme.inversePrimary,
                            fontSize: 12,
                          ),
                        ),
                      ),
                    )
                    .toList(),
              ),
            )
          ],
        ),
      ),
    );
  }
}
