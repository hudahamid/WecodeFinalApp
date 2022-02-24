
import 'dart:ui';

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
      
    );
  }
}

