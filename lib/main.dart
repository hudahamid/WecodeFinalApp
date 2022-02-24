import 'dart:ui';
import 'package:finalwecodeproject/config/app_router.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'screens/home/home_screen.dart';
import 'widget/customNavBar.dart';
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
      // routing
      onGenerateRoute: AppRouter.onGenrateRoute,
      initialRoute: homeScreen.routeName,

      home: homeScreen( )
    );
  }
}

