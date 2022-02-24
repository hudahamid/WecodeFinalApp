import 'package:flutter/material.dart';

ThemeData theme(){
return ThemeData(
  scaffoldBackgroundColor: Colors.white,
  fontFamily: 'Avenir',
  textTheme : textTheme(),
);
}

TextTheme textTheme(){
return TextTheme(
   headline1 :TextStyle( 
                  color: Colors.deepPurpleAccent, 
                  fontSize: 32,
                  fontFamily: 'Avenir',
                  fontWeight: FontWeight.bold
                      ),

       headline2 :TextStyle( 
                  color: Colors.deepPurpleAccent, 
                  fontSize: 24,
                  fontFamily: 'Avenir',
                  fontWeight: FontWeight.bold
                      ),

       headline3 :TextStyle( 
                  color: Colors.deepPurpleAccent, 
                  fontSize: 18,
                  fontFamily: 'Avenir',
                  fontWeight: FontWeight.bold
                      ),

       headline4 :TextStyle( 
                  color: Colors.deepPurpleAccent, 
                  fontSize: 16,
                  fontFamily: 'Avenir',
                  fontWeight: FontWeight.bold
                      ),

       headline5:TextStyle( 
                  color: Colors.deepPurpleAccent, 
                  fontSize: 14,
                  fontFamily: 'Avenir',
                  fontWeight: FontWeight.bold
                      ),

                      bodyText1 :TextStyle( 
                  color: Colors.deepPurpleAccent, 
                  fontSize: 12,
                  fontFamily: 'Avenir',
                  fontWeight: FontWeight.bold
                      ),

                     bodyText2:TextStyle( 
                  color: Colors.deepPurpleAccent, 
                  fontSize: 10,
                  fontFamily: 'Avenir',
                  fontWeight: FontWeight.bold
                      ),

       

       

       








);
}