import 'package:flutter/material.dart';
import 'package:mcdonald_project/coupon/coupon_page.dart';
import 'package:mcdonald_project/find_store/find_store_page.dart';
import 'package:mcdonald_project/login/login_page.dart';
import 'package:mcdonald_project/menu/menuPage.dart';
import 'package:mcdonald_project/view_more/view_more_page.dart';

import 'home/main_page.dart';


void main(){
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: HomePage(),

      initialRoute: "/home",
      routes:{
        "/home": (context) => HomePage(),
        "/coupon": (context) => CouponPage(),
        "/menu": (context) => MenuPage(),
        "/findStore": (context) => FindStorePage(),
        "/viewMore": (context) => ViewMorePage(),
        "/login": (context) => LoginPage(),
      }


    );
  }
}
