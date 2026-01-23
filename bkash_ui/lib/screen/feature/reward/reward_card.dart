import 'package:flutter/material.dart';
class RewardCard extends StatelessWidget {
  const RewardCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 10),
      child: Container(
        margin: const EdgeInsets.symmetric(horizontal: 16),
        padding: const EdgeInsets.all(12),
        height: 95,
        decoration: BoxDecoration(
          border: Border.all(color: Colors.grey, width: 1.2),
          color: const Color.fromARGB(255, 251, 247, 247),
          borderRadius: BorderRadius.circular(12),
        ),

       
        child: Row(
          children: [
            
            Expanded(
              flex: 3,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    "বিকাশ রিওয়ার্ড",
                    style: TextStyle(color: Colors.grey[800]),
                  ),
                  const SizedBox(height: 2),
                  const Text("🔥5620 পয়েন্ট"),
                  const SizedBox(height: 2),
                  const Text(
                    "বিস্তারিত..",
                    style: TextStyle(color: Colors.pink),
                  ),
                ],
              ),
            ),

            // 🥈 Silver medal
            Expanded(
              flex: 2,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: const [
                  Icon(
                    Icons.emoji_events,
                    color: Colors.grey,
                    size: 30,
                  ),
                  SizedBox(height: 4),
                  Text("Silver"),
                ],
              ),
            ),

           
            Expanded(
              flex: 2,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Stack(
                    clipBehavior: Clip.none,
                    children: [
                      const Icon(
                        Icons.military_tech,
                        color: Colors.pink,
                        size: 40,
                      ),
                      Positioned(
                        top: -2,
                        right: -2,
                        child: Container(
                          height: 16,
                          width: 16,
                          decoration: const BoxDecoration(
                            color: Colors.green,
                            shape: BoxShape.circle,
                          ),
                          child: const Icon(
                            Icons.check,
                            size: 12,
                            color: Color.fromARGB(255, 4, 98, 112),
                          ),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),

            
            Expanded(
              flex: 2,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: const [
                  Icon(
                    Icons.lock_clock_outlined,
                    color: Color.fromARGB(255, 214, 150, 150),
                    size: 30,
                  ),
                  SizedBox(height: 4),
                  Text("Silver"),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
