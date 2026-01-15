
import 'package:flutter/material.dart';

class BalanceWidgetBOX extends StatefulWidget {
  const BalanceWidgetBOX({super.key});

  @override
  State<BalanceWidgetBOX> createState() => _BalanceWidgetBOXState();
}

class _BalanceWidgetBOXState extends State<BalanceWidgetBOX> {
  
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 30,
      width: 140,
      decoration: BoxDecoration(color: Colors.white,borderRadius: BorderRadius.circular(10)),
    );
  }
}
