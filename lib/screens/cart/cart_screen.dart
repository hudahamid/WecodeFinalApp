
import 'dart:ui';

import 'package:finalwecodeproject/config/theme.dart';
import 'package:finalwecodeproject/models/model.dart';
import 'package:finalwecodeproject/widget/widgets.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class cartScreen extends StatelessWidget {
  static  const  String routeName= '/cart';
  
  static Route route(){
    return  MaterialPageRoute(
      settings: RouteSettings(name: routeName),
      builder: (_)=> cartScreen()
      
      );


  }


  const cartScreen({ Key? key }) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      
      appBar: customAppbarWiedget(title:'cart'),
     
      bottomNavigationBar: custom_navBar(),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal :20.0,vertical: 10.0),
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  'Add \$20.0  for free delivery',
                style: Theme.of(context).textTheme.headline5,
                ),
                ElevatedButton(
                  onPressed: (){
                    Navigator.pushNamed(context, '/');
                    },
                    style: ElevatedButton.styleFrom(
                      primary: Colors.black,
                      shape: RoundedRectangleBorder(),
                      elevation: 0,
                    ),
                     child: Text(
                       'Add more items ',
                       style: Theme.of(context).textTheme.headline5!.copyWith(
                         color: Colors.white),
                       )
                       )
              ],
              ),
              SizedBox(height: 10),
              CartProductCard(product:Product.products[0]),
               CartProductCard(product:Product.products[2]),

               Divider(thickness: 2,),

               Padding(
                 padding: const EdgeInsets.symmetric(horizontal: 40.0,vertical: 10.0),
                 child: Column(
                   children: [
                     Row(
                       mainAxisAlignment: MainAxisAlignment.spaceBetween,
                       children: [
                       Text(
                         'SUBTOTAL',
                         style: Theme.of(context).textTheme.headline5
                         ),
                       Text(
                         '\$5.98',
                         style: Theme.of(context).textTheme.headline5
                         )
                     ],),
                     SizedBox(height: 10,),
                     Row(
                   mainAxisAlignment: MainAxisAlignment.spaceBetween,
                   children: [
                   Text(
                     'DELIVERY FEE',
                     style: Theme.of(context).textTheme.headline5
                     ),
                   Text(
                     '\$2.90',
                     style: Theme.of(context).textTheme.headline5
                     )
                 ],)
                   ],
                 ),
               ),
               
          ],
        ),
      ),
      
    );
  }
}
