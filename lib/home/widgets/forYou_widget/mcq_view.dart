import 'package:education_tiktok/home/widgets/forYou_widget/answers_view.dart';
import 'package:education_tiktok/home/widgets/forYou_widget/question.dart';
import 'package:flutter/material.dart';

import '../../../model/question.dart';
import '../following_widget/history_view.dart';

class MCQView extends StatefulWidget {
  const MCQView({super.key, required this.card});

  final Question card;
  @override
  State<MCQView> createState() => _MCQViewState();
}

class _MCQViewState extends State<MCQView> {
  @override
  Widget build(BuildContext context) {
    return Expanded(
        child: Container(
      color: const Color.fromRGBO(255, 255, 255, 0.0),
      child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
        QuestionView(question: widget.card.question ?? ""),
        const SizedBox(
          height: 140,
        ),
        AnswerView(
          answers: widget.card.options ?? [],
          qid: widget.card.id ?? 0,
        ),
        const SizedBox(
          height: 30,
        ),
        HistoryView(
            name: widget.card.user!.name ?? "",
            description: widget.card.description ?? "")
      ]),
    ));
  }
}
