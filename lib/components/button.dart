import 'package:flutter/material.dart';

class ButtonImage extends StatelessWidget {
  final Widget icon;
  final double iconSize;
  final Function onPressed;
  const ButtonImage(
      {Key? key,
      required this.icon,
      required this.iconSize,
      required this.onPressed})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return OutlinedButton(
      onPressed: onPressed(),
      child: Padding(
        padding: const EdgeInsets.symmetric(vertical: 15, horizontal: 40),
        child: icon,
      ),
      style: OutlinedButton.styleFrom(
          side: const BorderSide(color: Colors.grey, width: 2),
          shape: const RoundedRectangleBorder(
              borderRadius: BorderRadius.all(Radius.circular(30)))),
    );
  }
}

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
