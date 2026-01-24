import 'package:bkash_ui/screen/home/otherseba/other_seba_list.dart';
import 'package:flutter/material.dart';

class OnnoSebaSection extends StatelessWidget {
  const OnnoSebaSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        /// Section Title
        const Padding(
          padding: EdgeInsets.symmetric(horizontal: 16, vertical: 10),
          child: Text(
            "অন্যান্য সেবাসমূহ",
            style: TextStyle(
              fontSize: 18,
              fontWeight: FontWeight.w600,
            ),
          ),
        ),

        /// Horizontal List
        SizedBox(
          height: 150,
          child: ListView.builder(
            itemCount: onnoSebaList.length,
            scrollDirection: Axis.horizontal,
           
            shrinkWrap: true,
            padding: const EdgeInsets.symmetric(horizontal: 12),
            itemBuilder: (context, index) {
              final item = onnoSebaList[index];

              return Padding(
                padding: const EdgeInsets.symmetric(horizontal: 10),
                child: Column(
                  children: [
                    /// Icon Circle
                    Container(
                      height: 70,
                      width: 70,
                      decoration: BoxDecoration(
                        color: Colors.grey.shade100,
                        shape: BoxShape.circle,
                      ),
                      child: Icon(
                        item.icon,
                        size: 34,
                        color: item.iconColor,
                      ),
                    ),
                    const SizedBox(height: 10),

                    /// Title
                    SizedBox(
                      width: 90,
                      child: Text(
                        item.title,
                        textAlign: TextAlign.center,
                        maxLines: 2,
                        overflow: TextOverflow.ellipsis,
                        style: const TextStyle(
                          fontSize: 13,
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                    ),
                  ],
                ),
              );
            },
          ),
        ),
      ],
    );
  }
}
