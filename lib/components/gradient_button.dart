import 'package:flutter/material.dart';

class GradientTextButton extends StatelessWidget {
  final Widget child;
  final double verticalPadding;
  final double horizontalPadding;
  final List<Color> colors;
  final Function onPressed;

  const GradientTextButton(
      {Key? key,
      required this.child,
      required this.verticalPadding,
      required this.horizontalPadding,
      required this.colors,
      required this.onPressed})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextButton(
      onPressed: () {
        onPressed();
      },
      child: ClipRRect(
        borderRadius: BorderRadius.circular(30),
        child: Container(
            padding: EdgeInsets.symmetric(
                vertical: verticalPadding, horizontal: horizontalPadding),
            decoration: BoxDecoration(gradient: LinearGradient(colors: colors)),
            child: child),
      ),
    );
  }
}
