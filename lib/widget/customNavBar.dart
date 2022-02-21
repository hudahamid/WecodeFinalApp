
import 'dart:ui';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';



class custom_navBar extends StatelessWidget {
  const custom_navBar({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BottomAppBar(
      color: Colors.deepPurpleAccent,
      child: Container(
        height: 70,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
                               IconButton(onPressed: (){ Navigator.pushNamed(context, '/');  },
                                  icon: Icon(Icons.home, color: Colors.white)
                                  ),

                                  IconButton(onPressed: (){   Navigator.pushNamed(context, '/cart');  },
                                              icon: Icon(Icons.shopping_cart,color: Colors.white)
                                  ),

                                    IconButton(onPressed: (){   Navigator.pushNamed(context, '/user');  },
                                              icon: Icon(Icons.person,color: Colors.white)
                                  ),

                                  ],
                                  ),


      ),
    );
  }
}

