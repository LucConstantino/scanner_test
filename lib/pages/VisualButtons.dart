import 'package:flutter/material.dart';
import 'package:scanner_bar/components/buttons.dart';
import 'package:scanner_bar/pages/barcodeScanner.dart';
import 'package:scanner_bar/pages/qrcodeScanner.dart';

class VisualButtons extends StatelessWidget {
  const VisualButtons({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Scanner Test'),
        centerTitle: true,
      ),
      body: Align(
        alignment: Alignment.center,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            ButtonComponent(
                buttonName: 'QR Code',
                function: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => QRCodeScannerScreen()),
                  );
                }),
            ButtonComponent(
                buttonName: 'Barcode',
                function: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => BarcodeScannerScreen()),
                  );
                }),
            ButtonComponent(buttonName: 'Photo', function: () {})
          ],
        ),
      ),
    );
  }
}
