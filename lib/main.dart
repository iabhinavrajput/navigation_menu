import 'package:flutter/material.dart';
import 'package:navigationmenu/navigation_menu.dart';
import 'splash_screen.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: SplashScreen(),
      routes: {
        '/navigationMenu':(context) => NavigationMenu(),
      },
    );
  }
}
