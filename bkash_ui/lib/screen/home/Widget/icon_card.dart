import 'package:flutter/material.dart';

class IconCard extends StatelessWidget {
  final String title;
  final String icon;

  const IconCard({super.key, required this.title, required this.icon});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          padding: const EdgeInsets.all(14),
          decoration: BoxDecoration(
            color: Colors.grey.shade100,
            shape: BoxShape.circle,
          ),
          child: Image.asset(icon, height: 26),
        ),
        const SizedBox(height: 6),
        Text(
          title,
          textAlign: TextAlign.center,
          maxLines: 2, 
          overflow: TextOverflow.ellipsis, 
          style: const TextStyle(fontSize: 12),
        ),
      ],
    );
  }
}
