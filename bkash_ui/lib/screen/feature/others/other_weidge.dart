import 'package:bkash_ui/screen/feature/others/other_list.dart';
import 'package:flutter/material.dart';
class OtherWeidge extends StatelessWidget {
  const OtherWeidge({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView.separated(
  itemCount: menuList.length,
   shrinkWrap: true,
  physics: const NeverScrollableScrollPhysics(),
  separatorBuilder: (_, __) => Divider(
    height: 1,
    color: Colors.grey.shade300,
  ),
  itemBuilder: (context, index) {
    final item = menuList[index];

    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 14),
      child: Row(
        children: [
          // Circle Icon
          Container(
            height: 44,
            width: 44,
            decoration: BoxDecoration(
              shape: BoxShape.circle,
              border: Border.all(
                color: item.iconColor.withOpacity(0.3),
              ),
            ),
            child: Icon(
              item.icon,
              color: item.iconColor,
            ),
          ),

          const SizedBox(width: 14),

          // Title + Subtitle
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  item.title,
                  style: const TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.w600,
                  ),
                ),
                const SizedBox(height: 4),
                Text(
                  item.subtitle,
                  style: TextStyle(
                    fontSize: 13,
                    color: Colors.grey.shade600,
                  ),
                ),
              ],
            ),
          ),

          // Arrow
          const Icon(
            Icons.chevron_right,
            color: Colors.grey,
          ),
        ],
      ),
    );
  },
);

  }
}