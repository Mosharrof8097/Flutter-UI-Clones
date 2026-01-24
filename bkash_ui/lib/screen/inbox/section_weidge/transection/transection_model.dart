import 'package:flutter/material.dart';

class TransactionModel {
  final IconData icon;       
  final String type;  
   final String name;         
  final String number;      
  final String trxId;        
  final double amount;        
  final String time;         
  final Color iconColor;      

  TransactionModel({
    required this.icon,
    required this.type,
    required this.name,
    required this.number,
    required this.trxId,
    required this.amount,
    required this.time,
    required this.iconColor,
  });
}
