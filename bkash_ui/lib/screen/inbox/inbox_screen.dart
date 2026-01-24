import 'package:bkash_ui/screen/inbox/section_weidge/notification/notificationpage.dart';
import 'package:bkash_ui/screen/inbox/section_weidge/transection/transection_page.dart';
import 'package:flutter/material.dart';

class InboxScreen extends StatefulWidget {
  const InboxScreen({super.key});

  @override
  State<InboxScreen> createState() => _InboxScreenState();
}

class _InboxScreenState extends State<InboxScreen> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2,
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: Color(0xFFDE1670),
          centerTitle: true,
          title: Text(
            "ইনবক্স",
            style: TextStyle(
              color: Colors.white,
              fontSize: 20,
              fontWeight: FontWeight.w400,
            ),
          ),
          actions: [
            Padding(
              padding: const EdgeInsets.only(right: 10.0),
              child: Image.asset("assets/images/bkashlogo.png", height: 30),
            ),
          ],
         
        ),
        body: Column(
          children: [
            Container(
                  margin: const EdgeInsets.all(12),
                  padding: const EdgeInsets.all(4),
                 
                  child: TabBar(
                    
                    labelColor: Color(0xFFDE1670),
                    unselectedLabelColor: Colors.black,
                    tabs: const [
                      Tab(text: "লেনদেনসমূহ"),
                      Tab(text: "নোটিফিকেশন"),
                    ],
                  ),
                ),
                Expanded(child: TabBarView(children: 
                [
                  TransectionPage(),Notificationpage()
                ]))
          ],
        ),

      ),
    );
  }
}
