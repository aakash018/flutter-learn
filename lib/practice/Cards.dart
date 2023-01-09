import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:test/Widgets/CardContainer.dart';

class Cards extends StatelessWidget {
  const Cards({super.key});
// UwU
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white10,
      body: Center(
          child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            // ignore: prefer_const_literals_to_create_immutables
            children: [
              const CardContainer(
                color: 0xffff2f38,
                text: "Health",
              ),
              const CardContainer(
                color: 0xfff1511d,
                text: "Wellness",
              ),
            ],
          ),
          const SizedBox(height: 20),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            // ignore: prefer_const_literals_to_create_immutables
            children: [
              const CardContainer(
                color: 0xff575850,
                text: "Politics",
              ),
              const CardContainer(
                color: 0xff1ebf5b,
                text: "Travel",
              ),
            ],
          ),
        ],
      )),
    );
  }
}
