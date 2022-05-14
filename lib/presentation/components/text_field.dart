import 'package:flutter/material.dart';

class RegularTextField extends StatelessWidget {
  final String hintText;
  final TextEditingController controller;

  const RegularTextField(
      {Key? key, required this.hintText, required this.controller})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextField(
      controller: controller,
      autofocus: false,
      style: const TextStyle(fontSize: 16.0, color: Colors.white),
      decoration: InputDecoration(
        filled: true,
        hintText: hintText,
        contentPadding: const EdgeInsets.all(0),
        hintStyle: const TextStyle(color: Colors.grey),
        focusedBorder: UnderlineInputBorder(
          borderSide: BorderSide(color: Colors.grey.shade50),
        ),
        enabledBorder: const UnderlineInputBorder(
          borderSide: BorderSide(color: Colors.grey),
        ),
      ),
    );
  }
}
