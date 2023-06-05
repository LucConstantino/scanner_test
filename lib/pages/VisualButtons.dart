import 'package:flutter/material.dart';
import 'package:scanner_bar/components/buttons.dart';

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
            ButtonComponent(buttonName: 'QR Code', function: () {}),
            ButtonComponent(buttonName: 'Barcode', function: () {}),
            ButtonComponent(buttonName: 'Photo', function: () {})
          ],
        ),
      ),
    );
  }
}