import 'package:bkash_ui/screen/flashscreen.dart';
import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';

class Welcomescreen extends StatelessWidget {
  const Welcomescreen({super.key});
  Future<void> gotoflash(BuildContext context) async {
    final prefsInstance = SharedPreferencesAsync();
    await prefsInstance.setBool('welcomescreen_seen', true);
    Navigator.pushReplacement(
      // ignore: use_build_context_synchronously
      context,
      MaterialPageRoute(builder: (_) => const Flashscreen()),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
       backgroundColor: const Color(0xFFDE1670),
      body: InkWell(
        onTap: () {
          gotoflash(context);
        },
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Center(
              child: Container(
                height: 85,
                width: 85,
                decoration: BoxDecoration(
                  color: Colors.grey[600],
                  borderRadius: BorderRadius.circular(25),
                ),
                padding: EdgeInsets.all(12),
                child: Image.asset(
                  "assets/images/bkslogo.png",
                  fit: BoxFit.contain,
                ),
              ),
            ),
            SizedBox(height: 15),
            Text(
              "Click To Open bKash App",
              style: TextStyle(color: Colors.white, fontSize: 18),
            ),
          ],
        ),
      ),
    );
  }
}
