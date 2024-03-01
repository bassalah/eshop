import 'package:clothshop/screens/product%20card.dart';
import 'package:flutter/material.dart';

import 'models/productModel.dart';

class homeScreen extends StatelessWidget {
  const homeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.white,
          leading: Icon(Icons.menu,color: Colors.black),
          title: Text("E-shop",style: TextStyle(color: Colors.black,fontSize:30,fontWeight:FontWeight.bold,)),
          centerTitle: true,
          actions: [
            Icon(Icons.notification_add,color: Colors.black),
          ],
        ),
        body: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(20),
            child: Column(
              children: [
              TextFormField(
                decoration: InputDecoration(
                  hintText: "search",
                  prefixIcon: Icon(Icons.search),
                  border: OutlineInputBorder(),

                ),),

              SizedBox(height: 20),
                Container(
                  width: double.infinity,
                  height: 150,
                  decoration:  BoxDecoration(
                    image: DecorationImage(
                      image:AssetImage("images/man.jpeg"),
                      fit: BoxFit.fill,

                ),
                  ),
                ),
                SizedBox(height: 20),
                GridView.builder(
                    shrinkWrap: true,
                    gridDelegate:
                     SliverGridDelegateWithFixedCrossAxisCount(
                            crossAxisCount: 2,
                            mainAxisSpacing:80,
                            crossAxisSpacing: 20),
                    itemCount: products.length,
                    itemBuilder: (BuildContext context, int index) {
                      return ProductCard(product: products[index]);
               },
                )

              ],
            ),
          ),
        ));
  }
}
