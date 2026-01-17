import 'package:bkash_ui/screen/home/Widget/icon_card.dart';
import 'package:bkash_ui/screen/home/Widget/icon_list.dart';
import 'package:flutter/material.dart';
class IconGrid extends StatelessWidget {
  final int itemCount;

  const IconGrid({super.key, required this.itemCount});

  @override
  Widget build(BuildContext context) {
    return GridView.builder(
      shrinkWrap: true,
      physics: const NeverScrollableScrollPhysics(),
      gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 4,
        mainAxisSpacing:  8,
        crossAxisSpacing: 8,
         childAspectRatio: 0.85, 
      ),
      itemCount: itemCount,
      itemBuilder: (context, index) {
        return IconCard(
          title: iconList[index]['title']!,
          icon: iconList[index]['icon']!,

          
        );
      },
    );
  }
}
