import 'package:bkash_ui/screen/feature/appBar_feature/appbar_feature.dart';
import 'package:flutter/material.dart';
class AmarBkash extends StatefulWidget {
  const AmarBkash({super.key});

  @override
  State<AmarBkash> createState() => _AmarBkashState();
}

class _AmarBkashState extends State<AmarBkash> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
     
      body:AppbarFeature()
    );
  }
}