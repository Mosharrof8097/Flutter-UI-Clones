import 'package:bkash_ui/screen/home/Widget/balance_widget.dart';
import 'package:bkash_ui/screen/home/Widget/icon_grid.dart';
import 'package:bkash_ui/screen/home/Widget/icon_list.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
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
             IconGrid(itemCount:iconList.length )
            ],
          ),
        ],
      ),
    );
  }
}
