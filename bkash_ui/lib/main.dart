import 'package:bkash_ui/navigation/bottom_nav.dart';
import 'package:bkash_ui/screen/feature/appBar_feature/appbar_feature.dart';
import 'package:bkash_ui/screen/flashscreen.dart';
import 'package:bkash_ui/screen/welcomescreen.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}
class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData.light(),
      // home:Tabpage() ,
      // home: Flashscreen(),
      home: BottomNav(),
      // home:  AppbarFeature(),
    );
  }
}