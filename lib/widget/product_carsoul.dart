import 'package:finalwecodeproject/models/model.dart';
import 'product_card.dart';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';




class productCarsoul extends StatelessWidget {

  final List<Product> products;
  const productCarsoul({
    Key? key,
    required this.products
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
    height: 165,
    child: ListView.builder(
      shrinkWrap: true,
      padding: const EdgeInsets.symmetric(horizontal:20.0,vertical: 10.0) ,
      scrollDirection: Axis.horizontal,
      itemCount: Product.products.length,
      itemBuilder: (context,index){
      return Padding( 
        padding: const EdgeInsets.only(right:5.0),
        child: productCard(product: Product.products[index]),
    
     );
      }
      ),


    );
  }

}