import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

class MyForm extends StatelessWidget {
  const MyForm({super.key});
  final double inputWidth = 300.0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Column(children: [
      SizedBox(
        width: inputWidth,
        child: const TextField(
          decoration: (InputDecoration(hintText: "Enter username")),
        ),
      ),
      const SizedBox(height: 40),
      SizedBox(
        width: inputWidth,
        child: const TextField(
          obscureText: true,
          decoration: InputDecoration(hintText: "Enter password"),
        ),
      ),
      const SizedBox(height: 40),
      _myformfield(),
    ]));
  }

  _myformfield() {
    return SizedBox(
      width: inputWidth,
      child: TextFormField(
        decoration: const InputDecoration(
            border: UnderlineInputBorder(), labelText: "Enter username"),
      ),
    );
  }
}
