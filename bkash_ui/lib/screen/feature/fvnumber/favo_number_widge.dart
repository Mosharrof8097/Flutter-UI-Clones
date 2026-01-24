import 'package:bkash_ui/screen/feature/fvnumber/favo_number_list.dart';
import 'package:flutter/material.dart';

class FavoNumberWidge extends StatelessWidget {
  const FavoNumberWidge({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 120,
      width: double.infinity,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Padding(
                padding: const EdgeInsets.only(left: 12),
                child: Text(
                  "আমার প্রিয় নাম্বার",
                  style: TextStyle(
                    color: Colors.black,
                    fontWeight: FontWeight.bold,
                    fontSize: 14,
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(right: 12),
                child: Text(
                  "ম্যানেজ",
                  style: TextStyle(
                    color: Colors.pink,
                    fontWeight: FontWeight.bold,
                    fontSize: 14,
                  ),
                ),
              ),
            ],
          ),
         SizedBox(
          height: 80,
           child: ListView.separated(
            scrollDirection: Axis.horizontal,
            physics: const BouncingScrollPhysics(),
             itemCount: FavoNumberList.length,
             separatorBuilder: (context, index) => const SizedBox(width: 20),//separet 
             itemBuilder: (BuildContext context, int index) {
              final item =FavoNumberList[index];
               return Column(
                 mainAxisAlignment: MainAxisAlignment.start,
                 children: [
                   Container(
               height: 50,
               width: 50,
               decoration: BoxDecoration(
                 color: Colors.pink.shade50,
                 shape: BoxShape.circle,
               ),
               child: Icon(
                 item.icon,
                 color: const Color.fromARGB(255, 205, 127, 153),
                 size: 28,
               ),
                             ), SizedBox(height: 6,),
               Padding(
                 padding: const EdgeInsets.only(left:8 ),
                 child: Text(
                 item.title,
                 maxLines: 1,
                 overflow: TextOverflow.ellipsis,
                 textAlign: TextAlign.center,
                 style: const TextStyle(
                   fontSize: 12,
                   fontWeight: FontWeight.w500,
                 ),
                               ),
               ),
                          
                 ],
               );
             },
           ),
         ),
        ],
      ),
    );
  }
}
