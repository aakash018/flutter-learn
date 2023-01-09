import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:flutter_svg/flutter_svg.dart';

class MyContainer extends StatelessWidget {
  const MyContainer({super.key});
// UwU
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.blue,
        body: Center(
            child: Container(
                padding: const EdgeInsets.all(35),
                margin: const EdgeInsets.all(20),
                decoration: BoxDecoration(
                    border: Border.all(color: Colors.black, width: 2),
                    borderRadius: BorderRadius.circular(8),
                    color: Color.fromARGB(255, 255, 105, 180),
                    boxShadow: const [
                      BoxShadow(
                          color: Color.fromARGB(207, 0, 0, 0),
                          spreadRadius: 5,
                          blurStyle: BlurStyle.outer,
                          blurRadius: 10,
                          offset: Offset(5, 5))
                    ]),
                child: Text(
                  "Hello ! I am in the container widget decoration box!!",
                  style: GoogleFonts.raleway(fontSize: 25),
                ))));
  }
}
