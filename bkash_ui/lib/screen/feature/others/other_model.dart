import 'package:flutter/material.dart';

class MenuOption {
  final IconData icon;     
  final String title;       
  final String subtitle;   
  final Color iconColor;    

  MenuOption({
    required this.icon,
    required this.title,
    required this.subtitle,
    this.iconColor = Colors.pink, 
  });
}
