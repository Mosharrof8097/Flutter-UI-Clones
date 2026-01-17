import 'package:bkash_ui/screen/home/Widget/balance_widget.dart';
import 'package:bkash_ui/screen/home/Widget/icon_grid.dart';
import 'package:bkash_ui/screen/home/Widget/icon_list.dart';
import 'package:bkash_ui/screen/home/imageWidge/image_slider.dart';
import 'package:bkash_ui/screen/home/imageWidge/imagecardlist.dart';
import 'package:bkash_ui/screen/home/imageWidge/semorebtn.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  double appBarHeight = 120;
  double gridHeight = 400;
  bool seeMore = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Column(
            children: [
              /// 🔥 Custom AppBar
              Container(
                height: 120,
                width: double.infinity,
                padding: const EdgeInsets.symmetric(horizontal: 16),
                decoration: const BoxDecoration(color: Color(0xFFDE1670)),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    /// Left circular icon
                    Container(
                      height: 40,
                      width: 40,
                      decoration: const BoxDecoration(
                        color: Colors.white,
                        shape: BoxShape.circle,
                      ),
                      child: Image.asset(
                        "assets/images/man.png",
                        fit: BoxFit.contain,
                      ),
                    ),

                    const SizedBox(width: 8),
                    Column(
                      mainAxisAlignment:
                          MainAxisAlignment.center, // 👈 vertical center
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          " Mosharrof",
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 16,
                            fontWeight: FontWeight.w400,
                          ),
                        ),

                        BalanceWidgetBOX(),
                      ],
                    ),

                    /// Balance widget
                    // const BalanceWidget(),
                    const Spacer(),

                    /// Right icon
                    Container(
                      height: 40,
                      width: 40,
                      decoration: const BoxDecoration(
                        color: Colors.white,
                        shape: BoxShape.circle,
                      ),
                      child: const Icon(Icons.search, color: Color(0xFFDE1670)),
                    ),
                    SizedBox(width: 5),
                    Container(
                      height: 40,
                      width: 40,
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(25),
                      ),
                      padding: EdgeInsets.all(12),
                      child: Image.asset(
                        "assets/images/bkashlogo.png",
                        fit: BoxFit.contain,
                      ),
                    ),
                  ],
                ),
              ),

              /// Body
              IconGrid(itemCount: iconList.length),
            ],
          ),

          /// Banner + Button (together)
          AnimatedPositioned(
  duration: const Duration(milliseconds: 300),
  curve: Curves.easeInOut,
  top: seeMore
      ? appBarHeight + (gridHeight * 1.3)
      : appBarHeight + (gridHeight * 0.85),
  left: 16,
  right: 16,
  child: Stack(
    clipBehavior: Clip.none, // 🔥 THIS LINE FIXES IT
    alignment: Alignment.topCenter,
    children: [
      /// Banner
      Container(
        height: 220,
        decoration: BoxDecoration(
          color: Colors.transparent,
          borderRadius: BorderRadius.circular(16),
          boxShadow: [
            BoxShadow(
              color: Colors.black.withOpacity(0.12),
              blurRadius: 10,
            ),
          ],
        ),
        child: ImageSlider(bannerImages: bannerImages),
      ),

      /// See More Button (outside banner)
      Positioned(
        top: -14,
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
),

        ],
      ),
    );
  }
}
