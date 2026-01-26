import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:bkash_ui/screen/flashscreen.dart';
import 'package:bkash_ui/screen/welcomescreen.dart';

class AppEntry extends StatefulWidget {
  const AppEntry({super.key});

  @override
  State<AppEntry> createState() => _AppEntryState();
}

class _AppEntryState extends State<AppEntry> {
  bool? seen;
  @override
  void initState() {
    super.initState();
    load();

  }
  Future <void> load()async{
    final prefsInstance =SharedPreferencesAsync();
    seen= await prefsInstance.getBool('Welcomescreen')??false;
    setState(() {
      
    });

  }


  @override
  Widget build(BuildContext context) {
    if (seen==null) {
      return const Scaffold(body: Center(child: CircularProgressIndicator(),),);

    
  }
    return seen! 
    ? const Flashscreen() :Welcomescreen();
  }
}