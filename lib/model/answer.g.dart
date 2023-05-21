// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'answer.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_Answer _$$_AnswerFromJson(Map<String, dynamic> json) => _$_Answer(
      id: json['id'] as int?,
      correct_options: (json['correct_options'] as List<dynamic>?)
          ?.map((e) => CorrectOption.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$_AnswerToJson(_$_Answer instance) => <String, dynamic>{
      'id': instance.id,
      'correct_options': instance.correct_options,
    };

_$_CorrectOption _$$_CorrectOptionFromJson(Map<String, dynamic> json) =>
    _$_CorrectOption(
      id: json['id'] as String?,
      answer: json['answer'] as String?,
    );

Map<String, dynamic> _$$_CorrectOptionToJson(_$_CorrectOption instance) =>
    <String, dynamic>{
      'id': instance.id,
      'answer': instance.answer,
    };
