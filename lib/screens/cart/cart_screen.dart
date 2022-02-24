
import 'dart:ui';

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
      
    );
  }
}

