import 'package:bkash_ui/screen/feature/appBar_feature/balanceInfo_box.dart';
import 'package:bkash_ui/screen/home/Widget/balance_widget.dart';
import 'package:flutter/material.dart';
class AppbarFeature extends StatelessWidget {
  const AppbarFeature({super.key});

  @override
  Widget build(BuildContext context) {
    return 
    Scaffold(
      body: Column(
          children: [
            /// 1. FIXED CUSTOM APP BAR
            Container(
              height: 130, 
              width: double.infinity,
              padding: const EdgeInsets.symmetric(horizontal: 16),
              decoration: const BoxDecoration(color: Color(0xFFDE1670)),
              child: Row(
                children: [
                  Container(
                    height: 45,
                    width: 45,
                    decoration: const BoxDecoration(
                      color: Colors.white,
                      shape: BoxShape.circle,
                    ),
                    child: ClipOval(
                      child: Image.asset(
                        "assets/images/man.png",
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),
                  const SizedBox(width: 12),
                  Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const Text(
                        "Md.Mosharrof Hossain",
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 14,
                          fontWeight: FontWeight.w400,
                        ),
                      ),
                      const SizedBox(height: 4),
                      BalanceinfoBox(),
                     
                
                  
                    ],
                  ),
                  const Spacer(),
                  const Icon(Icons.qr_code_2_outlined, color: Colors.white, size: 35),
                  const SizedBox(width: 20),
                  Container(
                    height: 45,
                    width: 45,
                    decoration: BoxDecoration(shape: BoxShape.circle,color: Colors.white),
                    child: ClipOval(
                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Image.asset(
                          "assets/images/bkashlogo.png",
                          height: 20,
                          
                        ),
                      ),
                    ),
                  ),
                ],
              ),
          )],),
    );
  }
}