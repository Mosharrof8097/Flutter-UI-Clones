import 'package:bkash_ui/screen/feature/appBar_feature/balanceInfo_box.dart';
import 'package:flutter/material.dart';

class AppbarFeature extends StatelessWidget {
  const AppbarFeature({super.key});

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    final appBarHeight = size.height * 0.16; 
    final avatarSize = size.width * 0.12;    

    return Column(
      children: [
        Container(
          height: appBarHeight,
          width: double.infinity,
          padding: const EdgeInsets.symmetric(horizontal: 16),
          decoration: const BoxDecoration(
            color: Color(0xFFDE1670),
          ),
          child: Row(
            children: [
             
              Container(
                height: avatarSize,
                width: avatarSize,
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

              // 👤 Name + Balance
              Expanded(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: const [
                    Text(
                      "Md. Mosharrof Hossain",
                      maxLines: 1,
                      overflow: TextOverflow.ellipsis,
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 14,
                        fontWeight: FontWeight.w400,
                      ),
                    ),
                    SizedBox(height: 4),
                    BalanceinfoBox(),
                  ],
                ),
              ),

              // 📷 QR
              Icon(
                Icons.qr_code_2_outlined,
                color: Colors.white,
                size: avatarSize * 0.8,
              ),

              const SizedBox(width: 16),

              //  bKash logo
              Container(
                height: avatarSize,
                width: avatarSize,
                decoration: const BoxDecoration(
                  color: Colors.white,
                  shape: BoxShape.circle,
                ),
                child: Padding(
                  padding: const EdgeInsets.all(8),
                  child: Image.asset(
                    "assets/images/bkashlogo.png",
                    fit: BoxFit.contain,
                  ),
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
