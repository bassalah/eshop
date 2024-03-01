import 'package:clothshop/widgets/cartTile.dart';
import 'package:clothshop/widgets/checkout.dart';

import 'package:flutter/material.dart';

import 'models/cartModel.dart';

class cartScreen extends StatefulWidget {
  const cartScreen({super.key});

  @override
  State<cartScreen> createState() => _cartScreenState();
}

class _cartScreenState extends State<cartScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
            backgroundColor:Colors.grey,
            centerTitle: true,
            title: const Text(
                "Cart",
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                ),),
        ),

      body: ListView.separated(
        padding: const EdgeInsets.all(20),
        itemBuilder: (context, index) =>CartTile(
          item: cartItems[index],
          onRemove: () {
            if (cartItems[index].quantity != 1) {
              setState(() {
                cartItems[index].quantity--;
              });
            }
          },
          onAdd: () {
            setState(() {
              cartItems[index].quantity++;
            });
          },
        ),
        separatorBuilder: (context, index) => const SizedBox(height: 20),
        itemCount: cartItems.length,
      ),
      bottomSheet: CheckOutBox(
        items: cartItems,
      ),
    );
  }
}