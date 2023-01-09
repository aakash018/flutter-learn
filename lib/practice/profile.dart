import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:flutter_svg/flutter_svg.dart';

class Profile extends StatelessWidget {
  const Profile({super.key});
// UwU
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Color.fromARGB(171, 2, 0, 26),
        appBar: AppBar(
            backgroundColor: Color.fromARGB(95, 19, 21, 26),
            title: Text("WhiteBoard",
                // style: TextStyle()
                style: GoogleFonts.pacifico(fontWeight: FontWeight.w400)),
            leading: Builder(
              builder: (BuildContext context) {
                return IconButton(
                  icon: const Icon(Icons.menu),
                  onPressed: () {},
                  tooltip:
                      MaterialLocalizations.of(context).openAppDrawerTooltip,
                );
              },
            ),
            actions: <Widget>[
              IconButton(
                icon: const Icon(Icons.favorite),
                tooltip: 'Show Snackbar',
                onPressed: () {
                  ScaffoldMessenger.of(context).showSnackBar(
                      const SnackBar(content: Text('This is a snackbar')));
                },
              ),
              IconButton(
                icon: const Icon(Icons.search),
                onPressed: () {
                  ScaffoldMessenger.of(context).showSnackBar(
                      const SnackBar(content: Text('This is a snackbar')));
                },
              ),
              IconButton(
                icon: const Icon(Icons.more_vert),
                onPressed: () {
                  print("Pressed");
                },
              ),
            ]),
        body: Center(
          child: Column(
            // mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              const SizedBox(height: 50),
              Image.asset(
                "images/me.jpg",
                height: 200,
                width: 200,
              ),
              const SizedBox(
                height: 50,
              ),
              Text("Aakash Khanal",
                  style:
                      GoogleFonts.raleway(color: Colors.white, fontSize: 20)),
              const SizedBox(height: 50),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Image.asset(
                    "images/bills1.jpg",
                    height: 100,
                    width: 100,
                  ),
                  Image.asset(
                    "images/bills2.jpg",
                    height: 100,
                    width: 100,
                  ),
                  Image.asset(
                    "images/bills3.jpg",
                    height: 100,
                    width: 100,
                  ),
                ],
              ),
              const SizedBox(height: 20),
              Text("I love Bills", style: GoogleFonts.raleway(fontSize: 20))
            ],
          ),
        ));
  }
}
