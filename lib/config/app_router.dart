import 'dart:ui';
import 'package:finalwecodeproject/screens/screens.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';


class AppRouter {
  static Route onGenrateRoute (RouteSettings settings){
    print('this is  route : ${settings.name}');

     switch  (settings.name){
        case '/':
          return homeScreen.route();

        case cartScreen.routeName:
           return  cartScreen.route();

        case wishlistScreen.routeName:
           return  wishlistScreen.route();
   
        case catalogScreen.routeName:
           return  catalogScreen.route();
           
        case productScreen.routeName:
           return  productScreen.route();


        default:
        return _errorRoute();
     }
     }
     static Route _errorRoute(){
    return MaterialPageRoute(
      settings: RouteSettings(name:'/error') ,
      builder: (_)=>Scaffold(appBar:AppBar(  title:  Text('Error')
                                      ),
      ),
     );
  }
}