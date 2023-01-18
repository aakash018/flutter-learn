import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:test/practice/Caller.dart';
import 'package:test/practice/Cards.dart';
import 'package:test/practice/alertDialogsBox.dart';
import 'package:test/practice/form.dart';
import 'package:test/practice/myRadioButton.dart';
import 'package:test/practice/TheColumn.dart';
import 'package:test/practice/container.dart';
import 'package:test/practice/profile.dart';

import 'practice/rowAndColumn.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      routes: {
        "/": (context) => const Caller(),
        "/profile": (context) => const Profile(),
        "/alert": (context) => const AlertBox()
      },
      theme: ThemeData(
        // is not restarted.
        primarySwatch: Colors.pink,
      ),
      // home: const MyForm(),
      debugShowCheckedModeBanner: false,
    );
  }
}
