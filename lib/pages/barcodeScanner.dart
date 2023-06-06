import 'package:flutter/material.dart';
import 'package:flutter_barcode_scanner/flutter_barcode_scanner.dart';

class BarcodeScannerScreen extends StatefulWidget {
  const BarcodeScannerScreen({Key? key}) : super(key: key);

  @override
  State<BarcodeScannerScreen> createState() => _BarcodeScannerScreenState();
}

class _BarcodeScannerScreenState extends State<BarcodeScannerScreen> {
  String ticket = '';

  readBarcode() async {
    String code = await FlutterBarcodeScanner.scanBarcode(
        "#FFFFFF", "Cancel", false, ScanMode.BARCODE);

    setState(() {
      ticket = code != '-1' ? code : 'Not Validated';
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: MediaQuery.of(context).size.width,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            if (ticket != '')
              Padding(
                padding: EdgeInsets.only(bottom: 24),
                child: Text(
                  'Ticket: $ticket',
                  style: TextStyle(fontSize: 20),
                ),
              ),
            ElevatedButton.icon(
              onPressed: readBarcode,
              icon: Icon(Icons.barcode_reader),
              label: Text('Validate'),
            )
          ],
        ),
      ),
    );
  }
}
