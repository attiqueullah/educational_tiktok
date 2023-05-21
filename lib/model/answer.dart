import 'package:education_tiktok/model/question.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'answer.freezed.dart';
part 'answer.g.dart';

@freezed
class Answer with _$Answer {
  const factory Answer({
    int? id,
    // ignore: non_constant_identifier_names
    List<CorrectOption>? correct_options,
  }) = _Answer;

  factory Answer.fromJson(Map<String, dynamic> json) => _$AnswerFromJson(json);
}

@freezed
class CorrectOption with _$CorrectOption {
  const factory CorrectOption({
    String? id,
    String? answer,
  }) = _CorrectOption;

  factory CorrectOption.fromJson(Map<String, dynamic> json) =>
      _$CorrectOptionFromJson(json);
}
