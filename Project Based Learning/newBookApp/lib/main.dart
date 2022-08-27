import 'package:bookapp/screens/home_screen.dart';
import 'package:flutter/material.dart';

import 'constants/color_constant.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        splashColor: Colors.transparent,
        highlightColor: Colors.transparent, colorScheme: ColorScheme.fromSwatch().copyWith(secondary: kMainColor)
      ),
      home: HomeScreen(),
      routes: {
        "/homeScreen":(_)=>new HomeScreen()
      },
    );
  }
}
