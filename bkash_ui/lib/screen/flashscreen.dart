import 'package:flutter/material.dart';
class Flashscreen extends StatelessWidget {
  const Flashscreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor:  Color(0xFFDE1670),
      body: Column(
          
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Center(child: Container(
              height: 59,
              width: 59,
              decoration: BoxDecoration(
                color: Colors.grey[700],
                borderRadius: BorderRadius.circular(15),
                

              ),
               padding: EdgeInsets.all(10),
              child:Image.asset("assets/images/bkslogo.png", fit: BoxFit.contain, ) ,
            )),
           
          ]
        ),
    );
  }
}