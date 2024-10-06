import 'package:flutter/material.dart';
import 'package:foodapp/component/my_button.dart';
import 'package:foodapp/component/my_cart_tile.dart';
import 'package:foodapp/models/restaurants.dart';
import 'package:foodapp/pages/payment_page.dart';
import 'package:provider/provider.dart';

class CartPage extends StatelessWidget {
  const CartPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Consumer<Restaurants>(
      builder: (context, restaurant, child) {
        //user cart
        final userCart = restaurant.cart;

        //UI
        return Scaffold(
          // ignore: deprecated_member_use
          backgroundColor: Theme.of(context).colorScheme.background,
          appBar: AppBar(
            title: const Text('Cart'),
            backgroundColor: Colors.transparent,
            foregroundColor: Theme.of(context).colorScheme.inversePrimary,
            actions: [
              IconButton(
                  onPressed: () {
                    showDialog(
                        context: context,
                        builder: (context) => AlertDialog(
                              title: const Text(
                                  'Are you sure are you want to clear the cart'),
                              actions: [
                                //cancel button
                                TextButton(
                                  onPressed: () => Navigator.pop(context),
                                  child: const Text('Cancel'),
                                ),
                                //yes
                                TextButton(
                                  onPressed: () {
                                    Navigator.pop(context);
                                    restaurant.clearCart();
                                  },
                                  child: const Text('Yes'),
                                )
                              ],
                            ));
                  },
                  icon: const Icon(Icons.delete))
            ],
          ),
          body: Column(
            children: [
              Expanded(
                child: Column(
                  children: [
                    userCart.isEmpty
                        ? const Expanded(
                            child: Center(child: Text('Cart is empty!!!')))
                        : Expanded(
                            child: ListView.builder(
                              itemCount: userCart.length,
                              itemBuilder: (context, index) {
                                //get cart item
                                final cartItem = userCart[index];

                                //UI Cart tile
                                return MyCartTile(cartItem: cartItem);
                              },
                            ),
                          )
                  ],
                ),
              ),
              MyButton(text: 'Pay', onTap: () {
                Navigator.push(context, MaterialPageRoute(builder: (context) => const PaymentPage()));
              },),
              const SizedBox(
                height: 20,
              )
            ],
          ),
        );
      },
    );
  }
}
