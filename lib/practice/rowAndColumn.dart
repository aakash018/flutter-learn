import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:flutter_svg/flutter_svg.dart';

class MyAppBar extends StatelessWidget {
  const MyAppBar({super.key});
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
        body: Column(
          // mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            const SizedBox(height: 50),
            Row(
                // mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  SvgPicture.asset(
                    "images/snow.svg",
                    height: 60,
                    width: 60,
                  ),
                  SvgPicture.asset(
                    "images/tree.svg",
                    height: 60,
                    width: 60,
                  )
                ]),
            const SizedBox(height: 50),
            Row(
                // mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  SvgPicture.asset(
                    "images/snow.svg",
                    height: 60,
                    width: 60,
                  ),
                  SvgPicture.asset(
                    "images/tree.svg",
                    height: 60,
                    width: 60,
                  ),
                  SvgPicture.asset(
                    "images/year.svg",
                    height: 60,
                    width: 60,
                  )
                ]),
          ],
        ));
  }
}
