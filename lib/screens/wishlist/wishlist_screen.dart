
import 'dart:ui';

import 'package:finalwecodeproject/models/model.dart';
import 'package:finalwecodeproject/widget/widgets.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class wishlistScreen extends StatelessWidget {
  static  const  String routeName= '/wishlistScreen';
  
  static Route route(){
    return  MaterialPageRoute(
      settings: RouteSettings(name: routeName),
      builder: (_)=> wishlistScreen()
      
      );


  }


  const wishlistScreen({ Key? key }) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      
      appBar: customAppbarWiedget(title:'wishlist'),
     
      bottomNavigationBar: custom_navBar(),
      body: Center(
        child: GridView.builder(
          padding: const EdgeInsets.symmetric(horizontal:8.0 ,vertical:16.0 ),
                      gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(  
                              crossAxisCount: 1,
                              childAspectRatio:2.9,
                              ),
             
                      itemCount:Product.products.length, 
                      itemBuilder: (BuildContext context,int index){
                        return productCard(
                            product: Product.products[index],
                            widthFactor: 1.1,
                            isWishlist: true,
                            );
                      }
                      
                      ),
      ) 
      ,
      
    );
  }
}

