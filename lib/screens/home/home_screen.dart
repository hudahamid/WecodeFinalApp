
import 'dart:ui';
 import 'package:carousel_slider/carousel_slider.dart';
import 'package:finalwecodeproject/models/category_model.dart';


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
      body: Container ( 
        child: CarouselSlider(
        options: CarouselOptions(
          aspectRatio: 2.0,
          enlargeCenterPage: true,
          enableInfiniteScroll: false,
          initialPage: 2,
          autoPlay: true,
        ),
        items: Category.categories.map((Category) =>HeroCarsoulCard(category: Category)).toList(),
      )),
      
    );
  }
}
