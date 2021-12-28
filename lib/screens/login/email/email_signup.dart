import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:motip_application/components/button.dart';
import 'package:motip_application/components/text.dart';
import 'package:motip_application/components/text_field.dart';
import 'package:motip_application/screens/home/home_screen.dart';
import 'email_login.dart';

class EmailSignUp extends StatelessWidget {
  const EmailSignUp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SingleChildScrollView(
      child: Body(),
    ));
  }
}

// ignore: must_be_immutable
class Body extends StatelessWidget {
  TextEditingController usernameController = TextEditingController();
  TextEditingController emailController = TextEditingController();
  TextEditingController passwordController = TextEditingController();

  Body({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Container(
        height: size.height,
        width: size.width,
        decoration: const BoxDecoration(color: Colors.black),
        child: Padding(
          padding: const EdgeInsets.symmetric(vertical: 50, horizontal: 10),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: <Widget>[
              Row(
                children: <Widget>[
                  GestureDetector(
                    onTap: () {
                      Navigator.of(context).pop();
                    },
                    child: SvgPicture.asset(
                      "assets/images/ic_caret-left.svg",
                      semanticsLabel: 'backButton',
                      color: Colors.white,
                      width: 50,
                    ),
                  )
                ],
              ),
              Padding(
                padding:
                    const EdgeInsets.symmetric(horizontal: 10, vertical: 20),
                child: Row(
                  children: const <Widget>[
                    TitleText(body: "create\nan account")
                  ],
                ),
              ),
              Padding(
                padding:
                    const EdgeInsets.symmetric(horizontal: 20, vertical: 20),
                child: RegularTextField(
                    hintText: "your username", controller: usernameController),
              ),
              Padding(
                padding:
                    const EdgeInsets.symmetric(horizontal: 20, vertical: 20),
                child: RegularTextField(
                    hintText: "your email", controller: emailController),
              ),
              Padding(
                padding:
                    const EdgeInsets.symmetric(horizontal: 20, vertical: 20),
                child: RegularTextField(
                    hintText: "your password", controller: passwordController),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(vertical: 25),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    GradientTextButton(
                        child: const Text("sign up",
                            style: TextStyle(color: Colors.white)),
                        verticalPadding: 18,
                        horizontalPadding: 120,
                        colors: const [Colors.blueAccent, Colors.purpleAccent],
                        onPressed: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => HomeScreen()));
                        }),
                  ],
                ),
              ),
              GestureDetector(
                onTap: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => EmailLogin()));
                },
                child: const QuoteText(
                  body: "already have an account?",
                ),
              )
            ],
          ),
        ));
  }
}
