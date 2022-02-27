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
        color:Colors.black,
        padding: const EdgeInsets.symmetric(horizontal: 30, vertical: 7,), 
        child: Text(
                    title,
                    style: Theme.of(context).textTheme.headline2!.copyWith(color: Colors.white)
                          //  colo
                      ),
                    ),
                    iconTheme: IconThemeData(color: Colors.black),
                    actions: [IconButton(icon:Icon(Icons.favorite),onPressed: (){
                      Navigator.pushNamed(context, '/wishlistScreen');
                    })],
      

    );
  }
  

  @override
  // TODO: implement preferredSize
  Size get preferredSize => Size.fromHeight(60.0);
}