import 'package:bkash_ui/screen/home/quick_feature/model_quick.dart';
import 'package:flutter/material.dart';

class IconTextList extends StatelessWidget {
  final List<IconTextItem> items;

  const IconTextList({super.key, required this.items});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 4),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: items.map((item) {
          return Expanded(
            child: Container(
              margin: const EdgeInsets.symmetric(horizontal: 4),
              padding: const EdgeInsets.symmetric(horizontal: 6, vertical: 10),
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(10),
                border: Border.all(color: Colors.grey.shade300, width: 0.6),
                // চাইলে subtle shadow
                // boxShadow: [
                //   BoxShadow(
                //     color: Colors.black.withOpacity(0.04),
                //     blurRadius: 6,
                //     offset: const Offset(0, 2),
                //   ),
                // ],
              ),
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
                    child: Icon(item.icon, color: Colors.pink, size: 16),
                  ),

                  const SizedBox(width: 4),

                  /// Text
                  Expanded(
                    child: Text(
                      item.title,
                      maxLines: 1,
                      overflow: TextOverflow.ellipsis,
                      style: const TextStyle(
                        fontSize: 11,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                  ),
                ],
              ),
            ),
          );
        }).toList(),
      ),
    );
  }
}
