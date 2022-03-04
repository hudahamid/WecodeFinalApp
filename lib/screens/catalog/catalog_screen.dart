
import 'dart:ui';

import 'package:finalwecodeproject/models/category_model.dart';
import 'package:finalwecodeproject/models/model.dart';
import 'package:finalwecodeproject/widget/widgets.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class catalogScreen extends StatelessWidget {
  static  const  String routeName= '/catalog';
  
  static Route route({required Category category}){
    return  MaterialPageRoute(
      settings: RouteSettings(name: routeName),
      builder: (_)=> catalogScreen(category:category)
      
      );
  }
   final Category category;

  const catalogScreen( { Key? key ,required this.category }) : super(key: key) ; // may have problem here mine
  @override
  Widget build(BuildContext context) {
    final List<Product> categoryProducts=Product.products.where((product) =>product.category==category.name).toList();
    return Scaffold(
      backgroundColor: Colors.white,
      
      appBar: customAppbarWiedget(title:category.name),
     
      bottomNavigationBar: custom_navBar(),

      body:GridView.builder(
        padding: const EdgeInsets.symmetric(horizontal:8.0 ,vertical:16.0 ),
                    gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(  
                            crossAxisCount: 2,
                            childAspectRatio: 1.15
                            ),
           
                    itemCount: categoryProducts.length, 
                    itemBuilder: (BuildContext context,int index){
                      return productCard(
                          product: categoryProducts[index],
                          widthFactor: 2.2,
                          );
                    }
                    
                    ) 
      
      
    );
  }
}
