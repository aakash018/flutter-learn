import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:google_fonts/google_fonts.dart';

class NotificationContainer extends StatelessWidget {
  const NotificationContainer({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 80,
      width: 345,
      padding: const EdgeInsets.all(10),
      decoration: BoxDecoration(
          color: Colors.white, borderRadius: BorderRadius.circular(10)),
      child: Column(mainAxisAlignment: MainAxisAlignment.start, children: [
        Row(
          children: const [
            Text(
              "Today",
              style: TextStyle(fontSize: 16),
            ),
          ],
        ),
        const SizedBox(height: 10),
        Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Text("11:58"),
            Container(
              margin: const EdgeInsets.only(left: 10),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: const [
                  Text("Incoming Call",
                      style: TextStyle(fontWeight: FontWeight.bold)),
                  Text(
                    "2 minutes",
                    style: TextStyle(color: Colors.grey),
                  )
                ],
              ),
            )
          ],
        )
      ]),
    );
  }
}
