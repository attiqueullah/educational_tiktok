import 'package:flutter/material.dart';

class QuestionView extends StatefulWidget {
  const QuestionView({super.key, required this.question});

  final String question;
  @override
  State<QuestionView> createState() => _QuestionState();
}

class _QuestionState extends State<QuestionView> {
  @override
  Widget build(BuildContext context) {
    return Text(widget.question,
        style: const TextStyle(
            fontSize: 18.0,
            color: Colors.white,
            fontStyle: FontStyle.normal,
            fontWeight: FontWeight.normal,
            decoration: TextDecoration.none));
  }
}
