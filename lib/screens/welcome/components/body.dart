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
            Expanded(
              child: Column(
                children: const <Widget>[
                  Text(
                    "motip",
                    style: TextStyle(
                        fontSize: 50.0,
                        fontWeight: FontWeight.w900,
                        color: Colors.white),
                  )
                ],
                mainAxisAlignment: MainAxisAlignment.end,
              ),
              flex: 3,
            ),
            Expanded(
              child: Column(
                children: const <Widget>[
                  SizedBox(
                    width: double.infinity,
                    child: Padding(
                      padding: EdgeInsets.all(40.0),
                      child: Text(
                        "cryptocurrency application",
                        style: TextStyle(
                            fontSize: 22.0,
                            fontWeight: FontWeight.normal,
                            color: Colors.white),
                      ),
                    ),
                  ),
                  SizedBox(
                      width: double.infinity,
                      child: Padding(
                        padding: EdgeInsets.symmetric(
                            vertical: 0.0, horizontal: 40.0),
                        child: Text(
                          "track and manage\nyour coins all\nthe time",
                          style: TextStyle(
                              fontSize: 30.0,
                              fontWeight: FontWeight.bold,
                              color: Colors.white),
                          textAlign: TextAlign.start,
                        ),
                      )),
                ],
                mainAxisAlignment: MainAxisAlignment.end,
              ),
              flex: 3,
            ),
            Expanded(
              child: GradientTextButton(
                  child: const Text("get started",
                      style: TextStyle(color: Colors.white)),
                  verticalPadding: 18,
                  horizontalPadding: 120,
                  colors: const [Colors.blueAccent, Colors.purpleAccent],
                  onPressed: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) => LoginScreen()));
                  }),
              flex: 2,
            ),
          ],
        ));
  }
}
