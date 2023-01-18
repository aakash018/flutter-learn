import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:test/Widgets/Notification.dart';
import 'package:test/Widgets/OptionsHolder.dart';

class Caller extends StatelessWidget {
  const Caller({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 207, 207, 207),
      body: Container(
        child: Column(
          children: [
            const SizedBox(height: 40),
            // ignore: prefer_const_literals_to_create_immutables
            Row(mainAxisAlignment: MainAxisAlignment.spaceEvenly, children: [
              const OptionsHolder(
                icon: Icons.message,
                label: "message",
                color: Color.fromARGB(255, 28, 112, 236),
              ),
              const OptionsHolder(
                icon: Icons.call,
                label: "call",
                color: Color.fromARGB(255, 28, 112, 236),
              ),
              const OptionsHolder(
                icon: Icons.videocam,
                label: "video-call",
                color: Color.fromARGB(255, 28, 112, 236),
              ),
              const OptionsHolder(
                icon: Icons.email,
                label: "mail",
                color: Color.fromARGB(255, 134, 134, 134),
              ),
            ]),

            const SizedBox(height: 10),
            const NotificationContainer(),
            const SizedBox(
              height: 50,
            ),
            //? Checked Button
            Row(
              children: [
                Checkbox(
                  value: true,
                  onChanged: (bool) => print(bool),
                ),
                const Text("Rembember Me")
              ],
            ),
            const SizedBox(
              height: 20,
            ),
            //? ElebatedButton
            ElevatedButton(
                onPressed: () => Navigator.pushNamed(context, "/profile"),
                child: const Text("Call History")),

            TextButton(
                onPressed: () => Navigator.pushNamed(context, "/alert"),
                child: const Text("Go to alerts"))
          ],
        ),
      ),
    );
  }
}
