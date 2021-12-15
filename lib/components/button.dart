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
