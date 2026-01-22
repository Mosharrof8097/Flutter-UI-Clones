import 'package:bkash_ui/screen/home/Widget/balance_widget.dart';
import 'package:bkash_ui/screen/home/Widget/icon_grid.dart';
import 'package:bkash_ui/screen/home/Widget/icon_list.dart';
import 'package:bkash_ui/screen/home/imageWidge/image_slider.dart';
import 'package:bkash_ui/screen/home/imageWidge/imagecardlist.dart';
import 'package:bkash_ui/screen/home/imageWidge/semorebtn.dart';
import 'package:bkash_ui/screen/home/quick_feature/aditional_feature/aditional_list.dart';
import 'package:bkash_ui/screen/home/quick_feature/aditional_feature/aditional_weidget.dart';
import 'package:bkash_ui/screen/home/quick_feature/quick_list.dart';
import 'package:bkash_ui/screen/home/quick_feature/quick_weidge.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  bool seeMore = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white, 
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
                      "Mosharrof",
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 16,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    const SizedBox(height: 4),
                    BalanceWidgetBOX(),
                  ],
                ),
                const Spacer(),
                const Icon(Icons.search, color: Colors.white, size: 28),
                const SizedBox(width: 15),
                Image.asset(
                  "assets/images/bkashlogo.png",
                  height: 30,
                  
                ),
              ],
            ),
          ),

          /// 2. SCROLLABLE BODY
          Expanded(
            child: SingleChildScrollView(
              physics: const BouncingScrollPhysics(),
              child: Column(
                children: [
                 

                  IconGrid(itemCount: seeMore ? iconList.length : 8),

                  
                  Stack(
                    clipBehavior: Clip.none,
                    alignment: Alignment.topCenter,
                    children: [
                  
                      Padding(
                        padding: const EdgeInsets.fromLTRB(16, 20, 16, 20),
                        child: Column(
                          children: [
                            /// Banner Slider
                            Container(
                              height: 150,
                              width: double.infinity,
                              decoration: BoxDecoration(
                                color: Colors.white,
                                borderRadius: BorderRadius.circular(12),
                                boxShadow: [
                                  BoxShadow(
                                    color: Colors.black.withOpacity(0.05),
                                    blurRadius: 10,
                                    offset: const Offset(0, 5),
                                  ),
                                ],
                              ),
                              child: ClipRRect(
                                borderRadius: BorderRadius.circular(12),
                                child: ImageSlider(bannerImages: bannerImages),
                              ),
                            ),
                            const SizedBox(height: 20),
                            Column(
                           
                              crossAxisAlignment: CrossAxisAlignment.start,
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: [
                                Text(" Quick Feature",style: TextStyle(color: Colors.black,fontWeight: FontWeight.bold),),
                                const SizedBox(height: 10),
                                IconTextList(items: iconTextList),
                                SizedBox(height: 10,),
                                AditionalWeidget(items: AditionalList),
                             
                              ],
                            ),
                            const SizedBox(height: 12),
                        
                            
                            
                            /// Extra space/content to ensure scrolling is visible
                            const SizedBox(height: 20),
                           
                          ],
                        ),
                      ),

                      
                      Positioned(
                        top: -18, // Floating between Grid and Banner
                        child: SeeMoreButton(
                          isExpanded: seeMore,
                          onTap: () {
                            setState(() {
                              seeMore = !seeMore;
                            });
                          },
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}