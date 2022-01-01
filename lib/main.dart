import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:motip_application/Screens/Welcome/welcome_screen.dart';
import 'package:motip_application/constants.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    SystemChrome.setEnabledSystemUIMode(SystemUiMode.manual,
        overlays: [SystemUiOverlay.top]);
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Motip',
      theme: ThemeData(
        primaryColor: kPrimaryColor,
      ),
      home: const WelcomeScreen(),
    );
  }
}
