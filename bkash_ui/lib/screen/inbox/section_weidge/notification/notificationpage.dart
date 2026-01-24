import 'package:bkash_ui/screen/inbox/section_weidge/notification/notification_list.dart';
import 'package:flutter/material.dart';

class Notificationpage extends StatelessWidget {
  const Notificationpage({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: notificationList.length,
      itemBuilder: (context, index) {
        final item = notificationList[index];
        return Container(
          margin: const EdgeInsets.only(bottom: 12),
          padding: const EdgeInsets.all(12),
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(12),
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              ClipRRect(
                borderRadius: BorderRadius.circular(8),
                child: Image.asset(
                  item.image,
                  width: double.infinity,
                  height: 160,
                  fit: BoxFit.cover,
                ),
              ),

              const SizedBox(height: 10),

              Text(
                item.title,
                style: const TextStyle(
                  fontSize: 16,
                  color: Color.fromARGB(255, 7, 7, 7),
                  fontWeight: FontWeight.bold,
                ),
              ),

              const SizedBox(height: 6),

              Text(
                item.subtitle,
                style: TextStyle(
                  fontSize: 14,
                  color: const Color.fromARGB(255, 42, 41, 41),
                ),
              ),

              const SizedBox(height: 8),

              Text(
                item.timeline,
                style: const TextStyle(
                  fontSize: 12,
                  color: Color.fromARGB(255, 70, 68, 68),
                ),
              ),
            ],
          ),
        );
      },
    );
  }
}
