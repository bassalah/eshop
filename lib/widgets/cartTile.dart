import 'package:flutter/material.dart';

import '../models/cartModel.dart';

class CartTile extends StatelessWidget {
  final CartItem item;
  final Function() onRemove;
  final Function() onAdd;
  const CartTile(
      {super.key,
        required this.item,
        required this.onRemove,
        required this.onAdd});

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Container(
          width: double.infinity,
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(20),
          ),
          padding: const EdgeInsets.all(10),
          child: Row(
            children: [
              Container(
                height: 85,
                width: 85,
                decoration: BoxDecoration(
                  color: Colors.white24,
                  borderRadius: BorderRadius.circular(20),
                ),
                padding: EdgeInsets.all(10),
                child: Image.asset(
                  item.product.image,
                ),
              ),
              SizedBox(width: 10),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    item.product.title,
                    style: const TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                 SizedBox(height: 5),

                  Text(
                    "${item.product.price}",
                    style: const TextStyle(
                      fontSize: 14,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
        Positioned(
          top: 5,
          right: 5,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.end,
            children: [
              IconButton(
                onPressed: () {},
                icon: Icon(
                Icons.delete,
                  color: Colors.red,
                  size: 20,
                ),
              ),
              Container(
                height: 40,
                decoration: BoxDecoration(
                  color: Colors.white24,
                  border: Border.all(
                    color: Colors.grey.shade200,
                    width: 2,
                  ),
                  borderRadius: BorderRadius.circular(20),
                ),
                child: Row(
                  children: [
                    IconButton(
                      onPressed: onRemove,
                      iconSize: 18,
                      icon: const Icon(
                      Icons.remove,
                        color: Colors.black,
                      ),
                    ),
                    Text(
                      item.quantity.toString(),
                      style: const TextStyle(
                        color: Colors.black,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    IconButton(
                      onPressed: onAdd,
                      iconSize: 18,
                      icon: const Icon(
                      Icons.add,
                        color: Colors.black,
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        )
      ],
    );
  }
}
