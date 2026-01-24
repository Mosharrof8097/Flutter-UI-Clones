import 'package:bkash_ui/screen/scanner/result_page.dart';
import 'package:flutter/material.dart';
import 'package:mobile_scanner/mobile_scanner.dart';

class ScannerScreen extends StatefulWidget {
  const ScannerScreen({super.key});

  @override
  State<ScannerScreen> createState() => _ScannerScreenState();
}

class _ScannerScreenState extends State<ScannerScreen> {
  bool isScanned = false;
  final MobileScannerController scannerController = MobileScannerController();

  @override
  void dispose() {
    scannerController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        backgroundColor: Color(0xFFDE1670),
        centerTitle: true,
        title: Text("QR Scan", style: TextStyle(color: Colors.white)),
        leading: IconButton(
          onPressed: () {},
          icon: Icon(Icons.arrow_back, color: Colors.white),
        ),
        actions: [
          Padding(
            padding: const EdgeInsets.only(right: 8.0),
            child: Image.asset("assets/images/bkashlogo.png", height: 30),
          ),
        ],
      ),
      body: Stack(
        children: [
          MobileScanner(
            controller: scannerController,
            onDetect: (capture) async {
              if (isScanned) return;

              final String? qrValue = capture.barcodes.first.rawValue;

              if (qrValue != null) {
                setState(() {
                  isScanned = true;
                });

                await scannerController.stop();

               
                await Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (_) => ResultPage(result: qrValue),
                  ),
                );


                setState(() {
                  isScanned = false;
                });

                await scannerController.start();
              }
            },
          ),
          Positioned(
            top: 30,
            left: 0,
            right: 0,
            child: Column(
              children: [
                Text(
                  'QR কোড স্ক্যান করুন',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                SizedBox(height: 8),
                Text(
                  'টাকা পাঠাতে QR কোড ক্যামেরার সামনে ধরুন',
                  style: TextStyle(color: Colors.white70, fontSize: 14),
                ),
              ],
            ),
          ),
          Center(
            child: Container(
              width: 260,
              height: 260,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(18),
                border: Border.all(color: Colors.white, width: 2),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
