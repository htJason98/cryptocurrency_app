import 'package:flutter/material.dart';
import 'package:motip_application/screens/login/components/body.dart';

class LoginScreen extends StatelessWidget {
  LoginScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: LoginState(),
      backgroundColor: Colors.black,
    );
  }
}
