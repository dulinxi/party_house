import 'package:flutter/material.dart';

import './routes/home.dart';

class PartyHouse extends StatelessWidget {
  // build App theme
  ThemeData _buildThemeData() {
    return ThemeData(
      primarySwatch: Colors.red,
    );
  }
  
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Party house',
      theme: ThemeData(
        primaryColor: Color.fromRGBO(33, 51, 160, 1),
        accentColor: Colors.red,
        // appBarTheme: AppBarTheme(
        //   color: Colors.white,
        //   brightness: Brightness.light,
        //   iconTheme: IconThemeData(color: Colors.black54),
        //   textTheme: TextTheme(
        //     title: TextStyle(
        //       color: Colors.black54,
        //       fontSize: 16,
        //       fontWeight: FontWeight.bold,
        //     ),
        //   ),
        // ),
      ),
      home: HomePage()
    );
  }
}
