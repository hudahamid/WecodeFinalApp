
import 'dart:ui';

import 'package:carousel_slider/carousel_slider.dart';
import 'package:finalwecodeproject/models/model.dart';
import 'package:finalwecodeproject/models/product_model.dart';
import 'package:finalwecodeproject/widget/widgets.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class productScreen extends StatelessWidget {
  static  const  String routeName= '/product';
  
  static Route route({required Product product}){
    return  MaterialPageRoute(
      settings: RouteSettings(name: routeName),
      builder: (_)=> productScreen(product:  product ),
      
      );


  }
 
     final Product product;
  const productScreen({ Key? key,required this.product }) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      
      appBar: customAppbarWiedget(title:product.name),
     
      bottomNavigationBar: BottomAppBar(
        color: Colors.black,
        child: Container(
          height: 70,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
            IconButton(onPressed: (){}, icon: Icon(Icons.share,color: Colors.white,)),
              IconButton(onPressed: (){}, icon: Icon(Icons.favorite,color: Colors.white)),
              ElevatedButton(
                style: ElevatedButton.styleFrom(primary: Colors.white),
                onPressed: (){}, child: Text('ADD TO CART',  style :Theme.of(context).textTheme.headline4!))

          ]),
        ),
        ),


      body:  ListView(
        children: [CarouselSlider(
              options: CarouselOptions(
                aspectRatio: 1.5,
                viewportFraction: 0.9,
                enlargeCenterPage: true,
                enlargeStrategy: CenterPageEnlargeStrategy.height,
                enableInfiniteScroll: false,
                initialPage: 2,
                autoPlay: true,
              ),
              items: [
                HeroCarsoulCard(product: product),
              ],   
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal:20.0 ,),
              child: Stack(
                children: [
                   Container(
                     width: MediaQuery.of(context).size.width,
                     height: 60,
                     alignment: Alignment.bottomCenter,
                     color: Colors.black.withAlpha(50),
                   ),
                   Container(
                     margin: const EdgeInsets.all(5.0),
                     width: MediaQuery.of(context).size.width-10,
                     height: 60,
                     alignment: Alignment.bottomCenter,
                     color: Colors.black,
                     child: Padding(
                       padding: const EdgeInsets.symmetric(horizontal: 20.0),
                       child: Row(
                         mainAxisAlignment: MainAxisAlignment.spaceBetween,
                         children: [
                         Text(product.name,style: Theme.of(context).textTheme.headline5!.copyWith(color: Colors.white),),
                         Text('${product.price}'),
                       ],),
                     ),
                   )
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20.0),
              child: ExpansionTile(
                initiallyExpanded: true,
                title: Text('product Information',style: Theme.of(context).textTheme.headline5,),
                children: [
                  ListTile(title: Text('this prouct is amazing try it with nice aura you fell refreshed :)',style: Theme.of(context).textTheme.bodyText1,),)
                ],
                ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20.0),
              child: ExpansionTile(
               // initiallyExpanded: true,
                title: Text('Delivery Information',style: Theme.of(context).textTheme.headline5,),
                children: [
                  ListTile(title: Text('this prouct is amazing try it with nice aura you fell refreshed :)',style: Theme.of(context).textTheme.bodyText1,),)
                ],
                ),
            )
            ],
            
      ),
      //HeroCarsoulCard(product: product,),
      
    );
  }
}

