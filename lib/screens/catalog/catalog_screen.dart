
import 'dart:ui';

import 'package:finalwecodeproject/widget/widgets.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class catalogScreen extends StatelessWidget {
  static  const  String routeName= '/catalog';
  
  static Route route(){
    return  MaterialPageRoute(
      settings: RouteSettings(name: routeName),
      builder: (_)=> catalogScreen()
      
      );


  }


  const catalogScreen({ Key? key }) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      
      appBar: customAppbarWiedget(title:'catalog'),
     
      bottomNavigationBar: custom_navBar(),
      
    );
  }
}

