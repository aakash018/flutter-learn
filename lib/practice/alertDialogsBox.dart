import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

class AlertBox extends StatelessWidget {
  const AlertBox({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          _myDialogBox(context),
          _snackBar(context),
          TextButton(
              onPressed: () => Navigator.pushNamed(context, "/"),
              child: const Text("Go to Caller"))
        ],
      ),
    );
  }

  _snackBar(BuildContext context) {
    return ElevatedButton(
        onPressed: () {
          ScaffoldMessenger.of(context).showSnackBar(SnackBar(
              content: const Text("Awesome SnackBar wowoowwowowowo"),
              action: SnackBarAction(
                  label: 'Action',
                  onPressed: () {
                    print("WOWWW CRAZYYYYYYY !!!!");
                  })));
        },
        child: const Text("Show Snackbar"));
  }

  _myDialogBox(BuildContext context) {
    return TextButton(
        child: const Text("Show Dialog"),
        onPressed: () => showDialog<String>(
            context: context,
            builder: (BuildContext context) => AlertDialog(
                  title: const Text("Alert Dialog Title",
                      style: TextStyle(color: Colors.white)),
                  content: const Text("Alert Disc",
                      style: TextStyle(color: Colors.white)),
                  backgroundColor: Color.fromARGB(221, 1, 1, 34),
                  actions: [
                    TextButton(
                        onPressed: () => Navigator.pop(context),
                        child: const Text(
                          "Cancel",
                          style: TextStyle(color: Colors.white),
                        )),
                    TextButton(
                        onPressed: () => print("I pressed Ok"),
                        child: const Text("OK",
                            style: TextStyle(color: Colors.white)))
                  ],
                )));
  }

// :)
}
