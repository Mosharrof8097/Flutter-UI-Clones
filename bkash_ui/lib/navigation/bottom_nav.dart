import 'package:bkash_ui/screen_list.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class BottomNav extends StatefulWidget {
  const BottomNav({super.key});

  @override
  State<BottomNav> createState() => _BottomNavState();
}

class _BottomNavState extends State<BottomNav> {
  int currentIndex = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body:pages[currentIndex] ,
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: currentIndex,
       selectedItemColor:Color(0xFFDE1670), 
       unselectedItemColor: Colors.black12,

        type: BottomNavigationBarType.fixed,
        backgroundColor: Colors.transparent,
        onTap: (index) {
          setState(() {
            currentIndex = index;
          });
        },

        items: [
          BottomNavigationBarItem(
            icon: SvgPicture.asset(
              "assets/icons/home.svg",
              colorFilter: ColorFilter.mode(
                Colors.white, // unselected color
                BlendMode.srcIn,
              ),
            ),
            activeIcon: SvgPicture.asset(
              "assets/icons/home.svg",
              
              height: 24,
              colorFilter: ColorFilter.mode(
                Color(0xFFDE1670), // selected color
                BlendMode.srcIn,
              ),
            ),
            label: "হোম",
          ),
          BottomNavigationBarItem(
            icon: SvgPicture.asset(
              "assets/icons/wallet.svg",
              colorFilter: ColorFilter.mode(
                Colors.white, // unselected color
                BlendMode.srcIn,
              ),
            ),
            activeIcon: SvgPicture.asset(
              "assets/icons/wallet.svg",
              
              height: 24,
              colorFilter: ColorFilter.mode(
                Color(0xFFDE1670), // selected color
                BlendMode.srcIn,
              ),
            ),
            label: "আমার বিকাশ",
          ),
          BottomNavigationBarItem(
            icon: SvgPicture.asset(
              "assets/icons/scanner.svg",
              colorFilter: ColorFilter.mode(
                Colors.white, // unselected color
                BlendMode.srcIn,
              ),
            ),
            activeIcon: SvgPicture.asset(
              "assets/icons/scanner.svg",
              
              height: 24,
              colorFilter: ColorFilter.mode(
                Color(0xFFDE1670), // selected color
                BlendMode.srcIn,
              ),
            ),
            label: "QR স্ক্যান",
          ),
          BottomNavigationBarItem(
            icon: SvgPicture.asset(
              "assets/icons/inbox.svg",
              colorFilter: ColorFilter.mode(
                Colors.white, // unselected color
                BlendMode.srcIn,
              ),
            ),
            activeIcon: SvgPicture.asset(
              "assets/icons/inbox.svg",
              
              height: 24,
              colorFilter: ColorFilter.mode(
                Color(0xFFDE1670), // selected color
                BlendMode.srcIn,
              ),
            ),
            label: "ইনবক্স",
          ),
         
        ],
      ),
    );
  }
}
