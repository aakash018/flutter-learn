import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

class MyRadioButton extends StatefulWidget {
  const MyRadioButton({super.key});

  @override
  State<MyRadioButton> createState() => _MyRadioButtonState();
}

class _MyRadioButtonState extends State<MyRadioButton> {
  int? _groupValue = -1;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Column(
      children: [
        RadioListTile(
          title: const Text("Android"),
          value: 0,
          groupValue: _groupValue,
          onChanged: (newValue) {
            setState(() {
              _groupValue = newValue;
            });
          },
        ),
        RadioListTile(
          title: const Text("IOS"),
          value: 1,
          groupValue: _groupValue,
          onChanged: (newValue) {
            setState(() {
              _groupValue = newValue;
            });
          },
        ),
        RadioListTile(
          title: const Text("Web"),
          value: 2,
          groupValue: _groupValue,
          onChanged: (newValue) {
            setState(() {
              _groupValue = newValue;
            });
          },
        ),
      ],
    ));
  }
}
