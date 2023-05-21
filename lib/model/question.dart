// To parse this JSON data, do
//
//     final question = questionFromMap(jsonString);

import 'package:freezed_annotation/freezed_annotation.dart';

part 'question.freezed.dart';
part 'question.g.dart';

@freezed
class Question with _$Question {
  const factory Question({
    String? type,
    int? id,
    String? playlist,
    // ignore: non_constant_identifier_names
    String? flashcard_front,
    // ignore: non_constant_identifier_names
    String? flashcard_back,
    String? description,
    String? question,
    List<Option>? options,
    User? user,
  }) = _Question;

  factory Question.fromJson(Map<String, dynamic> json) =>
      _$QuestionFromJson(json);
}

@freezed
class User with _$User {
  const factory User({
    String? name,
    String? avatar,
  }) = _User;

  factory User.fromJson(Map<String, dynamic> json) => _$UserFromJson(json);
}

@freezed
class Option with _$Option {
  const factory Option({
    String? id,
    String? answer,
  }) = _Option;

  factory Option.fromJson(Map<String, dynamic> json) => _$OptionFromJson(json);
}
