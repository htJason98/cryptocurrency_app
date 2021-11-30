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
    return IconButton(
      icon: icon,
      iconSize: iconSize,
      onPressed: onPressed(),
    );
  }
}
