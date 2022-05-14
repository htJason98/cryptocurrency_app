import 'package:flutter/material.dart';
import 'package:motip_application/presentation/components/gradient_box.dart';

class Background extends StatelessWidget {
  final Widget child;
  const Background(Key? key, {required this.child}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Container(
      height: size.height,
      width: double.infinity,
      decoration: const BoxDecoration(color: Colors.black),
      child: Stack(
        alignment: Alignment.center,
        children: <Widget>[
          Positioned(
              top: 40,
              left: -70,
              child: GradientBox(150, 150, 75,
                  [Colors.redAccent.shade400, Colors.orange.shade400])),
          Positioned(
              top: 150,
              right: -55,
              child: GradientBox(120, 120, 60,
                  [Colors.purpleAccent, Colors.blueAccent.shade400])),
          Positioned(
              bottom: -50,
              left: -55,
              child: GradientBox(120, 120, 60,
                  [Colors.purple.shade300, Colors.lightGreenAccent.shade400])),
          child,
        ],
      ),
    );
  }
}
