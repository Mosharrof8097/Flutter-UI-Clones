import 'package:bkash_ui/screen/feature/priyo_agent/priyo_agent_list.dart';
import 'package:flutter/material.dart';

class PriyoAgentWeidge extends StatelessWidget {
  const PriyoAgentWeidge({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        Padding(
          padding: const EdgeInsets.only(left: 10.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Text(
                "আমার প্রিয় এজেন্ট",
                style: TextStyle(fontSize: 13, fontWeight: FontWeight.bold),
              ),
            ],
          ),
        ),
        SizedBox(
          height: 80,
          child: ListView.separated(
            scrollDirection: Axis.horizontal,
            itemCount: PriyoAgenList.length,
    
            itemBuilder: (context, index) {
              final item = PriyoAgenList[index];
              
    
              return Padding(
                padding: const EdgeInsets.all(8.0),
                child: Container(
                  height: 70,
                  
                  decoration: BoxDecoration(border: Border.all(color: Colors.grey,),borderRadius: BorderRadius.circular(10)),
                  child: Row(
                    children: [
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Icon(item.icon, color: Colors.pink, size: 40),
                      ),
                      const SizedBox(width: 6),
                      Column(
                        children: [
                          Padding(
                            padding: const EdgeInsets.only(top: 13.0,right: 6),
                            child: Text(
                              item.agentName,
                              maxLines: 1,
                              overflow: TextOverflow.ellipsis,
                              style: const TextStyle(fontSize: 13),
                            ),
                          ),
                          SizedBox(height: 5),
                          Text(
                            item.agentNumber,
                            maxLines: 1,
                            overflow: TextOverflow.ellipsis,
                            style: const TextStyle(fontSize: 13,color: Colors.blueGrey),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              );
            },
    
            separatorBuilder: (context, index) {
              return const SizedBox(width: 16); // শুধু gap
            },
          ),
        ),
      ],
    );
  }
}
