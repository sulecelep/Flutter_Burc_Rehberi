import 'package:burc_project/route_generator.dart';
import 'package:flutter/material.dart';
import 'package:burc_project/burc_listesi.dart';
void main() {
  runApp( const MyApp());
}

class MyApp extends StatelessWidget {
   const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false, //buna bak
      theme: ThemeData(
        primarySwatch: Colors.pink,
      ),
      // home: BurcListesi(),
      onGenerateRoute: RouteGenerator.routeGenerator,
    );
  }
}