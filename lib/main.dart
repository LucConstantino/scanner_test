import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: VisualButtons(),
    );
  }
}

class VisualButtons extends StatelessWidget {
  const VisualButtons({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Scanner Test'),
        centerTitle: true,
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          ElevatedButton(onPressed: () {}, child: Text('QR Code')),
          ElevatedButton(onPressed: () {}, child: Text('Barcode')),
          ElevatedButton(onPressed: () {}, child: Text('Photo')),
        ],
      ),
    );
  }
}

