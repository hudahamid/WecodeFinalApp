import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';


class sectionTile extends StatelessWidget {
  final String title;
  const sectionTile({
    Key? key, required this.title,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal:20.0,vertical: 30),
      
      child: Align
      (
        alignment:Alignment.topLeft ,
        
      
        child: Text('RECOMMENDED',style: Theme.of(context).textTheme.headline5,)
        
        ),
    );
  }
}
