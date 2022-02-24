
import 'dart:ui';

import 'package:finalwecodeproject/widget/widgets.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class productScreen extends StatelessWidget {
  static  const  String routeName= '/product';
  
  static Route route(){
    return  MaterialPageRoute(
      settings: RouteSettings(name: routeName),
      builder: (_)=> productScreen()
      
      );


  }


  const productScreen({ Key? key }) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      
      appBar: customAppbarWiedget(title:'products'),
     
      bottomNavigationBar: custom_navBar(),
      
    );
  }
}

