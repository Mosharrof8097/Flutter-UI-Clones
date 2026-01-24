import 'package:bkash_ui/screen/inbox/section_weidge/transection/transection_weidge.dart';
import 'package:flutter/material.dart';

class TransectionPage extends StatefulWidget {
  const TransectionPage({super.key});

  @override
  State<TransectionPage> createState() => _TransectionPageState();
}

class _TransectionPageState extends State<TransectionPage> {
  final TextEditingController textcontroller = TextEditingController();
  @override
  void dispose() {
    textcontroller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Column(
      children: [
        Row(
          children: [
            Padding(
              padding: const EdgeInsets.only(left: 12.0),
              child: SizedBox(
                height: size.height * 0.05,
    
                width: size.width * 0.6,
    
                child: TextField(
                  controller: textcontroller,
                  decoration: InputDecoration(
                    hintText: "TrxID বা নাম্বার দিয়ে খুজুন ",
                    contentPadding: EdgeInsets.symmetric(
                      horizontal: 16,
                      vertical: 12,
                    ),
                    prefixIcon: Icon(Icons.search),
                    hintStyle: TextStyle(
                      color: const Color.fromARGB(255, 97, 95, 95),
                    ),
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(8),
                    ),
                  ),
                ),
              ),
            ),
            SizedBox(width: size.width * 0.08),
            Container(
              height: size.height * 0.055,
              width: size.width * 0.22,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(12),
                border: Border.all(color: Colors.grey),
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Icon(
                    Icons.filter_list,
                    color: Color.fromARGB(255, 255, 46, 116),
                  ),
                  SizedBox(width: 6),
                  Text(
                    "ফিল্টার",
                    style: TextStyle(
                      color: Color.fromARGB(255, 255, 46, 116),
                    ),
                  ),
                ],
              ),
    
            ),
          ],
        ),
        Expanded(child: TransectionWeidge())
      
      ],
    );
  }
}
