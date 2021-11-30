import 'package:flutter/material.dart';

class GradientBox extends StatelessWidget {
  final double height;
  final double width;
  final double borderRadius;
  final List<Color> colors;

  const GradientBox(this.height, this.width, this.borderRadius, this.colors, {Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ClipRRect(
        borderRadius: BorderRadius.circular(borderRadius),
        child: Container(
          height: height,
          width: width,
          decoration: BoxDecoration(
            gradient: LinearGradient(
                begin: Alignment.topRight,
                end: Alignment.bottomLeft,
                colors: colors),
          ),
        ));
  }
}
