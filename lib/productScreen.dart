
import 'package:flutter/material.dart';

import 'cartScreen.dart';
import 'models/productModel.dart';

class ProductScreen extends StatefulWidget {
  final Product product;
  const ProductScreen({super.key, required this.product});

  @override
  State<ProductScreen> createState() => _ProductScreenState();
}

class _ProductScreenState extends State<ProductScreen> {

  @override
  Widget build(BuildContext context) {

    return Scaffold(

      appBar: AppBar(
        backgroundColor: Colors.white,
        leading: Icon(Icons.backspace_sharp),
        actions: [
          Icon(Icons.shopping_cart),
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          children: [
            Container(
              width:double.infinity,
              height: 400,
              color: Colors.grey,
              child: Image.asset(widget.product.image),

            ),
            Row(
              children: [
                Column(
                  children: [
                    Text(
                     widget.product.title,
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 16,
                      ),
                    ),
                    Text(
                  "${widget.product.price}"  ,
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 10,
                      ),
                    ),
                  ],
                ),
                Text(
                  "4.5",
                  style: TextStyle(

                    fontSize: 10,
                  ),
                ),
                Icon(Icons.star,
                color: Colors.orange,),
              ],
            ),
            Text(
              "4.5",
              style: TextStyle(

                fontSize: 10,
              ),
            ),
            Text(
              "very stylish suit you can buy ,it is more modern",
              style: TextStyle(

                fontSize: 10,
              ),
            ),
        ElevatedButton(onPressed: (){
          Navigator.push(context, MaterialPageRoute(builder:(builder)=>cartScreen()));
        }, child: Text(
          "Add to cart",
          style: TextStyle(
            fontWeight: FontWeight.bold,
            fontSize: 16,
          ),
        ), )
          ],
        ),
      ),
    );
  }
}
