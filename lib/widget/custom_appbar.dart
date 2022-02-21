import 'dart:ui';

import 'package:flutter/material.dart';




class customAppbarWiedget extends StatelessWidget with PreferredSizeWidget {
  final String  title;
  const customAppbarWiedget({ Key? key,required this.title }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AppBar(
      backgroundColor: Colors.transparent,
      elevation: 0,
      title: Container(
        margin: EdgeInsets.only(left: 50),
        color:Colors.deepPurpleAccent,
        padding: const EdgeInsets.symmetric(horizontal: 30, vertical: 7,), 
        child: Text(
                    'Online Shopping',
                    style: TextStyle(
                            color: Colors.white, fontSize: 24, fontFamily: 'Avenir',fontWeight: FontWeight.bold
                      ),
                      ),
                    ),
                    iconTheme: IconThemeData(color: Colors.deepPurpleAccent),
                    actions: [IconButton(icon:Icon(Icons.favorite),onPressed: (){})],
      

    );
  }
  

  @override
  // TODO: implement preferredSize
  Size get preferredSize => Size.fromHeight(60.0);
}