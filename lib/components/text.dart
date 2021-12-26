import 'package:flutter/material.dart';

class TitleText extends StatelessWidget {
  final String body;

  const TitleText({Key? key, required this.body}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Text(
      body,
      style: const TextStyle(
          fontSize: 40.0, fontWeight: FontWeight.w900, color: Colors.white),
      textAlign: TextAlign.start,
    );
  }
}

class MediumText extends StatelessWidget {
  final String body;

  const MediumText({Key? key, required this.body}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Text(
      body,
      style: const TextStyle(
          fontSize: 22.0, fontWeight: FontWeight.bold, color: Colors.white),
      textAlign: TextAlign.start,
    );
  }
}

class RegularText extends StatelessWidget {
  final String body;

  const RegularText({Key? key, required this.body}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Text(
      body,
      style: const TextStyle(
          fontSize: 20.0, fontWeight: FontWeight.normal, color: Colors.white),
      textAlign: TextAlign.start,
    );
  }
}

class QuoteText extends StatelessWidget {
  final String body;

  const QuoteText({Key? key, required this.body}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Text(
      body,
      style: const TextStyle(
          fontSize: 14.0, fontWeight: FontWeight.normal, color: Colors.grey),
      textAlign: TextAlign.start,
    );
  }
}
