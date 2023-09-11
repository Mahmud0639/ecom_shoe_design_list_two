import 'package:ecom_design_two_list/pages/home_page.dart';
import 'package:ecom_design_two_list/pages/item_page.dart';
import 'package:ecom_design_two_list/pages/login_page.dart';
import 'package:flutter/material.dart';
import 'package:sliding_sheet/sliding_sheet.dart';

void main(){
  runApp(const MyApp());
}

class MyApp extends StatelessWidget{
  const MyApp({super.key});

  @override
  Widget build(BuildContext context){
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        scaffoldBackgroundColor: Color(0xFFCEDDEE),
      ),
      routes: {
        "/":(context)=>LoginPage(),
        "homePage":(context)=>HomePage(),
        "itemPage":(context)=>ItemPage(),
      },

    );
  }
}