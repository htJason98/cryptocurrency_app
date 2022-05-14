import 'package:flutter/material.dart';
import 'package:motip_application/presentation/components/gradient_box.dart';

class Background extends StatelessWidget {
  final Widget child;
  const Background({Key? key, required this.child}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Container(
      height: size.height,
      width: double.infinity,
      child: Stack(
        alignment: Alignment.center,
        children: <Widget>[
          const Positioned(
              top: 100,
              left: -70,
              child:
                  GradientBox(150, 150, 75, [Colors.blue, Colors.pinkAccent])),
          const Positioned(
              top: 100,
              right: 50,
              child: GradientBox(
                  70, 70, 35, [Colors.orangeAccent, Colors.pinkAccent])),
          const Positioned(
              top: 350,
              right: -50,
              child: GradientBox(
                  100, 100, 50, [Colors.greenAccent, Colors.blueAccent])),
          child
        ],
      ),
    );
  }
}
