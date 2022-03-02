
import 'dart:ui';
 import 'package:carousel_slider/carousel_slider.dart';
import 'package:finalwecodeproject/models/category_model.dart';
import 'package:finalwecodeproject/models/product_model.dart';


import 'package:finalwecodeproject/widget/widgets.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class homeScreen extends StatelessWidget {
  static  const  String routeName= '/';
  
  static Route route(){
    return  MaterialPageRoute(
      settings: RouteSettings(name: routeName),
      builder: (_)=> homeScreen()
      
      );


  }


  const homeScreen({ Key? key }) : super(key: key);
  @override
  Widget build(BuildContext context) {

         
    return Scaffold(
      backgroundColor: Colors.white,
      
      appBar: customAppbarWiedget(title:'Online Shopping'),
     
      bottomNavigationBar: custom_navBar(),
      body: Column(
        children: [
          Container ( 
            child: CarouselSlider(
            options: CarouselOptions(
              aspectRatio: 2.0,
              enlargeCenterPage: true,
              enableInfiniteScroll: false,
              initialPage: 2,
              autoPlay: true,
            ),
            items: Category.categories.map((Category) =>HeroCarsoulCard(category: Category)).toList(),
          ),),

          
          sectionTile(title:'RECOMMENDED'), 
          // product card
          productCard(product: Product.products[0],),
        ],
      ),
      
    );
  }
}

class productCard extends StatelessWidget {
  final Product product;
  const productCard({
    Key? key, required this.product,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Stack(children: [
         Container(
           width:MediaQuery.of(context).size.width/2.3,
           height:160,
           child: Image.network(Product.products[0].imageUrl,fit: BoxFit.cover,),
         
         ),
         Positioned(
           top: 60,
           child: Container(
             width: MediaQuery.of(context).size.width/2.5,
             height:90,
             decoration: BoxDecoration(color: Colors.black.withAlpha(50)),
           ),
         ),

         Positioned(
           top: 90,
           left: 6,
           child: Container(
             width: MediaQuery.of(context).size.width/2.3,
             height:60,
             decoration: BoxDecoration(color: Colors.black.withAlpha(50)),
            // color: Colors.black,
             child: Row(
               children: [
                 Expanded(
                   flex: 3,
                   child: Column(
                     mainAxisAlignment: MainAxisAlignment.center,
                     crossAxisAlignment:CrossAxisAlignment.start,
                     children: [
                       Text(Product.products[0].name,style: Theme.of(context).textTheme.headline5!.copyWith(color: Colors.white),),
                      
                       Text(
                             '\$${Product.products[0].price}',style: Theme.of(context).textTheme.headline6!.copyWith(color: Colors.white),
                    )
                     ],
                   ),
                 ),
                Expanded(child: IconButton(onPressed:(){}, icon: Icon(Icons.add_circle,color: Colors.white,)),)
               ],
             ),
           ),
         ),
         
    ],);
  }
}
