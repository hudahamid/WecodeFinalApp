
import 'dart:ui';

import 'package:finalwecodeproject/models/category_model.dart';
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

  const catalogScreen({ required this.category }) ;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      
      appBar: customAppbarWiedget(title:'catalog'),
     
      bottomNavigationBar: custom_navBar(),
      
    );
  }
}

