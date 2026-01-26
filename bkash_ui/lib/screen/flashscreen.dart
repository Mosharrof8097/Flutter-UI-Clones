import 'package:flutter/material.dart';
import 'package:bkash_ui/navigation/bottom_nav.dart';
import 'package:page_transition/page_transition.dart';

class Flashscreen extends StatefulWidget {
  const Flashscreen({super.key});

  @override
  State<Flashscreen> createState() => _FlashscreenState();
}

class _FlashscreenState extends State<Flashscreen> {

  @override
  void initState() {
    super.initState();
    goToHome(); 
  }

 Future<void> goToHome() async {
  await Future.delayed(const Duration(seconds: 2));

  if (!mounted) return;

  Navigator.pushReplacement(
    context,
    PageTransition(
      type: PageTransitionType.rightToLeft,
      child: const BottomNav(),
      duration: const Duration(milliseconds: 900),
    ),
  );

  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFDE1670),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Center(
            child: Container(
              height: 59,
              width: 59,
              padding: const EdgeInsets.all(10),
              decoration: BoxDecoration(
                color: Colors.grey[700],
                borderRadius: BorderRadius.circular(15),
              ),
              child: Image.asset(
                "assets/images/bkslogo.png",
                fit: BoxFit.contain,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
