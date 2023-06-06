import 'package:flutter/material.dart';

class ButtonComponent extends StatelessWidget {
  ButtonComponent({Key? key, required this.buttonName, required this.function})
      : super(key: key);

  String buttonName;
  Function function;

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: () {
        function();
      },
      child: Text(buttonName),
    );
  }
}
