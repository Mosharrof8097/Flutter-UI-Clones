import 'package:bkash_ui/screen/feature/appBar_feature/appbar_feature.dart';
import 'package:bkash_ui/screen/feature/fvnumber/favo_number_widge.dart';
import 'package:bkash_ui/screen/feature/others/other_weidge.dart';
import 'package:bkash_ui/screen/feature/priyo_agent/priyo_agent_weidge.dart';
import 'package:bkash_ui/screen/feature/reward/reward_card.dart';
import 'package:bkash_ui/screen/inbox/section_weidge/notification/notificationpage.dart';
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
      backgroundColor: Colors.white,
      
      body:SingleChildScrollView(
        physics: const BouncingScrollPhysics(),
        
        child: Container(child: Column(
          children: [
            AppbarFeature(),
            SizedBox(height: 10,),
            RewardCard(),
             SizedBox(height: 15,),
            FavoNumberWidge(),
             SizedBox(height: 15,),

           PriyoAgentWeidge (),
           OtherWeidge()//eror kno
            
           
            
          ],
        )),
      )
    );
  }
}