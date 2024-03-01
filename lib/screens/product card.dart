import 'package:flutter/material.dart';
import '../models/productModel.dart';
import '../productScreen.dart';

class ProductCard extends StatelessWidget {
  final Product product;

  const ProductCard({super.key, required this.product});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.of(context).push(
          MaterialPageRoute(
            builder: (context) => ProductScreen(product: product),
          ),
        );
      },
      child: Stack(
          children: [
            Container(
              height: 350,
              width: 250,

              decoration: BoxDecoration(
                color: Colors.grey,
                borderRadius: BorderRadius.circular(20),
              ),
         child:Column(
                   children:[
               Image.asset(
                    product.image,
                    width: 120,
                    height: 120,
                    ),

            Text(
              product.title,
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 16,
              ),
            ),


            Text(
              "${product.price}",
              style: const TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 16,
              ),
            ),
           ] )
            ),


            Positioned(
              right: 0,
              top: 15,
              child: Container(
                width: 30,
                height: 30,
                color: Colors.white24,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20)
                ),
                child:  Icon(
                  Icons.favorite_border,
                  color: Colors.white,
                  size: 18,
                ),
              ),
            ),
          ]),


    );
  }
}
