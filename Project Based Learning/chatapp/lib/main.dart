import 'package:chatapp/routes/app.route.dart';
import 'package:chatapp/screens/theme.style.dart';
import 'package:chatapp/views/auth.view.dart';
import 'package:chatapp/views/home.view.dart';
import 'package:chatapp/views/unknown.view.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: 'Chat App',
      theme: AppTheme.lightTheme,
      debugShowCheckedModeBanner: false,
      getPages: RouteView.values.map((e){
        switch(e){
          case RouteView.home:
            return GetPage(name: "/${e.name}", page: ()=>HomeView());
          case RouteView.auth:
            return GetPage(name: "/${e.name}", page: ()=>AuthView());
          default:
            return GetPage(name: "/${e.name}", page: ()=>UnknownView());
        }
      }).toList(),
      initialRoute: RouteView.home.name,
    );
  }
}
