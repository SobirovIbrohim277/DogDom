import 'package:flutter/material.dart';
import 'package:imtihon/core/constants/imports.dart';
import 'package:imtihon/providers/bottom_nav_bar_provider.dart';
import 'package:imtihon/providers/home_page_provider.dart';
import 'package:imtihon/providers/search_field_provider.dart';
import 'package:imtihon/providers/text_field_provider.dart';
import 'package:imtihon/view/screens/circle/circle_page.dart';
import 'package:imtihon/view/screens/launch_sign/launch_page.dart';

void main() {
  runApp(MultiProvider(
    providers: [
      ChangeNotifierProvider(create: (context) => TextFieldProvider()),
      ChangeNotifierProvider(create: (context) => SearchFieldProvider()),
      ChangeNotifierProvider(create: (context) => HomePageProvider()),
      ChangeNotifierProvider(create: (context) => BottomNavBarProvider()),
    ],
    child: const MyApp(),
  ));
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        fontFamily: "SFProDisplay",
        primarySwatch: Colors.blue,
      ),
      //home: const LaunchPage(),
      home: CirclePage(),
    );
  }
}
