import 'package:flutter/material.dart';
import 'package:qrcode/home_Layout.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      initialRoute:HomeLayout_Screen.routeName ,
    routes:{
      HomeLayout_Screen.routeName:(context) => HomeLayout_Screen(),
    },

    );
  }
}


