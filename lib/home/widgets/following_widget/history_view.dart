import 'package:education_tiktok/model/question.dart';
import 'package:flutter/material.dart';

class HistoryView extends StatefulWidget {
  const HistoryView({super.key, required this.name, required this.description});

  final String name;
  final String description;

  @override
  State<HistoryView> createState() => _HistoryViewState();
}

class _HistoryViewState extends State<HistoryView> {
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(widget.name,
            style: const TextStyle(
                fontSize: 16.0,
                color: Colors.white,
                fontStyle: FontStyle.normal,
                fontWeight: FontWeight.normal,
                decoration: TextDecoration.none)),
        const SizedBox(
          height: 10,
        ),
        Text(widget.description,
            style: const TextStyle(
                fontSize: 14.0,
                color: Colors.white,
                fontStyle: FontStyle.normal,
                fontWeight: FontWeight.normal,
                decoration: TextDecoration.none))
      ],
    );
  }
}
