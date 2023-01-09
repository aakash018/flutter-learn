import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:google_fonts/google_fonts.dart';

class CardContainer extends StatelessWidget {
  final String text;
  final int color;
  const CardContainer({super.key, required this.color, required this.text});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 120,
      width: 150,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(8),
          gradient: LinearGradient(
              begin: Alignment.bottomRight,
              end: Alignment.topLeft,
              colors: [Color(color), Color(color).withOpacity(0)])),
      padding: const EdgeInsets.all(20),
      child: Text(
        text,
        style: GoogleFonts.raleway(fontSize: 20, fontWeight: FontWeight.bold),
      ),
    );
  }
}
