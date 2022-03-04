import 'package:finalwecodeproject/models/model.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class productCard extends StatelessWidget {
  final Product product;
  final widthFactor;
  const productCard({
    Key? key, required this.product,this.widthFactor=2.5
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final double widthValue=MediaQuery.of(context).size.width/widthFactor;
    return Stack(children: [
         Container(
           width:MediaQuery.of(context).size.width/2.3,
           height:160,
           child: Image.network(Product.products[0].imageUrl,fit: BoxFit.cover,),
         
         ),
         Positioned(
           top: 88,
            left: 8,
           child: Container(
             width: MediaQuery.of(context).size.width/2.3,
             height:80,
             decoration: BoxDecoration(color: Colors.black.withAlpha(50)),
           ),
         ),
         // text describtion position  
         Positioned(
           top: 77,
           left: 4,
           child: Container(
             width: MediaQuery.of(context).size.width/2.3,
             height:65,
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
