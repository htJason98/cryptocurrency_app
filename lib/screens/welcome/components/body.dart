import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:motip_application/components/gradient_button.dart';
import 'package:motip_application/screens/login/login_screen.dart';
import 'package:motip_application/screens/welcome/components/background.dart';

class Body extends StatelessWidget {
  const Body({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Background(key,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            const SizedBox(
              width: double.infinity,
              height: 150.0,
            ),
            const Text(
              "motip",
              style: TextStyle(
                  fontSize: 50.0,
                  fontWeight: FontWeight.w900,
                  color: Colors.white),
            ),
            const SizedBox(
              width: double.infinity,
              height: 50.0,
            ),
            const SizedBox(
              width: double.infinity,
              child: Padding(
                padding: EdgeInsets.all(30.0),
                child: Text(
                  "cryptocurrency application",
                  style: TextStyle(
                      fontSize: 22.0,
                      fontWeight: FontWeight.normal,
                      color: Colors.white),
                ),
              ),
            ),
            const SizedBox(
                width: double.infinity,
                child: Padding(
                  padding:
                      EdgeInsets.symmetric(vertical: 30.0, horizontal: 30.0),
                  child: Text(
                    "track and manage\nyour coins all\nthe time",
                    style: TextStyle(
                        fontSize: 30.0,
                        fontWeight: FontWeight.bold,
                        color: Colors.white),
                    textAlign: TextAlign.start,
                  ),
                )),
            GradientTextButton(
                child: const Text("Started",
                    style: TextStyle(color: Colors.white)),
                verticalPadding: 18,
                horizontalPadding: 120,
                colors: const [Colors.blueAccent, Colors.purpleAccent],
                onPressed: () {
                  // ignore: avoid_print
                  print("Click");
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => LoginScreen()));
                })
          ],
        ));
  }
}
