import 'package:flutter/material.dart';
class Tabpage extends StatelessWidget {
  const Tabpage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: InkWell(
        onTap: (){

        },
        child: Column(
          
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Center(child: Container(
              height: 85,
              width: 85,
              decoration: BoxDecoration(
                color: Colors.grey[600],
                borderRadius: BorderRadius.circular(25),
                

              ),
               padding: EdgeInsets.all(12),
              child:Image.asset("assets/images/bkslogo.png", fit: BoxFit.contain, ) ,
            )),
            SizedBox(height: 15,),
            Text("Click To Open bKash App",style: TextStyle(color: Color(0xFFDE1670),fontSize: 18),)
          ],
        ),
      ),
    
    );
  }
}