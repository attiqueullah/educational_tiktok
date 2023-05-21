import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import '../../../model/question.dart';
import 'bloc/for_you_bloc.dart';

class AnswerView extends StatefulWidget {
  const AnswerView({super.key, required this.qid, required this.answers});

  final int qid;
  final List<Option> answers;

  @override
  State<AnswerView> createState() => _AnswerViewState();
}

class _AnswerViewState extends State<AnswerView> {
  @override
  Widget build(BuildContext context) {
    return BlocBuilder<ForYouBloc, ForYouState>(
      builder: (context, state) {
        return ListView.builder(
          itemCount: widget.answers.length,
          scrollDirection: Axis.vertical,
          physics: const ClampingScrollPhysics(),
          shrinkWrap: true,
          itemBuilder: (context, index) {
            return answerCell(context, widget.answers[index]);
          },
        );
      },
    );
  }

  Widget answerCell(BuildContext context, Option answer) {
    return BlocBuilder<ForYouBloc, ForYouState>(
      builder: (context, state) {
        return Card(
          color: showAnswerColor(state, state.answer == answer.id, answer),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(10),
          ),
          child: ListTile(
            onTap: () {
              context.read<ForYouBloc>().add(SelectForYou(
                  cardId: widget.qid, selectedAnswer: answer.id ?? ""));
            },
            // ignore: unrelated_type_equality_checks
            trailing: showAnswer(state, state.answer == answer.id, answer),
            leading: Text(
              answer.answer ?? "",
              style: const TextStyle(
                  fontSize: 14.0,
                  color: Colors.white,
                  fontStyle: FontStyle.normal,
                  fontWeight: FontWeight.normal,
                  decoration: TextDecoration.none),
            ),
          ),
        );
      },
    );
  }

  Color? showAnswerColor(ForYouState state, bool isCorrect, Option answer) {
    if (state.status.isAnswered) {
      return isCorrect
          ? Colors.green.withOpacity(0.9)
          : answer.id == state.selectedAnswer
              ? Colors.red.withOpacity(0.9)
              : Colors.white.withOpacity(0.2);
    } else {
      return Colors.white.withOpacity(0.2);
    }
  }

  Widget? showAnswer(ForYouState state, bool isCorrect, Option answer) {
    if (state.status.isSelected) {
      return const SizedBox(
        height: 20,
        width: 20,
        child: CircularProgressIndicator(),
      );
    } else if (state.status.isAnswered) {
      if (isCorrect) {
        return const Icon(
          Icons.check_circle,
          color: Colors.white,
          size: 25.0,
        );
      } else {
        if (answer.id == state.selectedAnswer) {
          return const Icon(
            Icons.cancel,
            color: Colors.white,
            size: 25.0,
          );
        } else {
          return null;
        }
      }
    } else {
      return null;
    }
  }
}
