import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:imtihon/core/themes/main_theme.dart';
import 'package:imtihon/providers/bottom_provider.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(
    MultiProvider(
      providers: [
        ChangeNotifierProvider(create: (_) => BottomNavBarProvider()),
      ],
      child: const MyApp(),
    ),
  );

  SystemChrome.setPreferredOrientations([DeviceOrientation.portraitUp]);
  SystemChrome.setSystemUIOverlayStyle(const SystemUiOverlayStyle(
    statusBarColor: Colors.transparent,
    statusBarIconBrightness: Brightness.dark,
  ));
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Ticket',
      debugShowCheckedModeBanner: false,
      theme: MainTheme.light,
      //home: const HomePage(),
      home: MyBottomNavigationBar(),
    );
  }
}

MyBottomNavigationBar() {}
