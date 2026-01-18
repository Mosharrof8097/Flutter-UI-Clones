import 'package:bkash_ui/screen/home/quick_feature/model_quick.dart';
import 'package:flutter/material.dart';

class IconTextList extends StatelessWidget {
  final List<IconTextItem> items;

  const IconTextList({
    super.key,
    required this.items,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 4.0),
      child: Row(
        // ৩টি কার্ডকে সমান দূরত্বে রাখার জন্য spaceBetween ব্যবহার করা হয়েছে
        mainAxisAlignment: MainAxisAlignment.spaceBetween, 
        children: items.map((item) {
          return Expanded( // প্রতিটি কার্ড যেন সমান জায়গা পায় তার জন্য Expanded
            child: Card(
              elevation: 1.5,
              margin: const EdgeInsets.symmetric(horizontal: 4), // কার্ডগুলোর মাঝের গ্যাপ
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(10),
              ),
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 6, vertical: 10),
                child: Row(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    /// Icon
                    Container(
                      height: 30,
                      width: 30,
                      decoration: BoxDecoration(
                        color: Colors.grey.shade100,
                        shape: BoxShape.circle,
                      ),
                      child: Icon(
                        item.icon,
                        color: Colors.pink,
                        size: 16,
                      ),
                    ),

                    const SizedBox(width: 4),

                    /// Text with Ellipsis (...)
                    Expanded(
                      child: Text(
                        item.title,
                        maxLines: 1, // লেখা এক লাইনে থাকবে
                        overflow: TextOverflow.ellipsis, // বড় লেখা হলে শেষে ... দেখাবে
                        style: const TextStyle(
                          fontSize: 11, // কার্ড ছোট হওয়ার কারণে ফন্ট সাইজ কমানো হয়েছে
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          );
        }).toList(),
      ),
    );
  }
}