import 'package:flutter/material.dart';
import 'package:untitled/Loginpage.dart';
import 'package:untitled/modules/home_screen.dart';

import 'package:untitled/layout/main_screen.dart';


void main() {
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    home: MyLogin(),
    routes: {

      'login': (context) => MyLogin(),
      'HomeScreen':(context) =>MainScreen(),
    },
  ));
}