import 'dart:ui';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'widget/custom_appbar.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),

      home: homeScreen()
    );
  }
}

class homeScreen extends StatelessWidget {
  const homeScreen({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: customAppbarWiedget(title:'Online Shopping'),
      bottomNavigationBar: BottomAppBar(
        color: Colors.deepPurpleAccent,
        child: Container(
          height: 70,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
                                 IconButton(onPressed: (){ Navigator.pushNamed(context, '/');  },
                                    icon: Icon(Icons.home, color: Colors.white)
                                    ),

                                    IconButton(onPressed: (){   Navigator.pushNamed(context, '/');  },
                                                icon: Icon(Icons.shopping_cart,color: Colors.white)
                                    ),

                                      IconButton(onPressed: (){   Navigator.pushNamed(context, '/');  },
                                                icon: Icon(Icons.person,color: Colors.white)
                                    ),

                                    ],
                                    ),


        ),
      ),
      
    );
  }
}

