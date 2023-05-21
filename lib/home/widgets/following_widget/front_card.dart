import 'package:flutter/material.dart';

import '../../../model/question.dart';
import '../forYou_widget/question.dart';
import 'history_view.dart';

class FrontCard extends StatefulWidget {
  const FrontCard({super.key, required this.card});

  final Question card;
  @override
  State<FrontCard> createState() => _FrontCardState();
}

class _FrontCardState extends State<FrontCard> {
  @override
  Widget build(BuildContext context) {
    return Expanded(
        child: Container(
      padding: const EdgeInsets.only(right: 10),
      color: const Color.fromRGBO(255, 255, 255, 0.0),
      child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
        QuestionView(question: widget.card.flashcard_front ?? ""),
        const SizedBox(
          height: 280,
        ),
        HistoryView(
            name: widget.card.user!.name ?? "",
            description: widget.card.description ?? "")
      ]),
    ));
  }
}
