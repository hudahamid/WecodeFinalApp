import 'dart:ui';
import 'package:finalwecodeproject/models/category_model.dart';
import 'package:finalwecodeproject/models/model.dart';
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
           return  catalogScreen.route(category: settings.arguments as Category);
           
        case productScreen.routeName:
           return  productScreen.route(product:settings.arguments as Product);


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