// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'question.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_Question _$$_QuestionFromJson(Map<String, dynamic> json) => _$_Question(
      type: json['type'] as String?,
      id: json['id'] as int?,
      playlist: json['playlist'] as String?,
      flashcard_front: json['flashcard_front'] as String?,
      flashcard_back: json['flashcard_back'] as String?,
      description: json['description'] as String?,
      question: json['question'] as String?,
      options: (json['options'] as List<dynamic>?)
          ?.map((e) => Option.fromJson(e as Map<String, dynamic>))
          .toList(),
      user: json['user'] == null
          ? null
          : User.fromJson(json['user'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$_QuestionToJson(_$_Question instance) =>
    <String, dynamic>{
      'type': instance.type,
      'id': instance.id,
      'playlist': instance.playlist,
      'flashcard_front': instance.flashcard_front,
      'flashcard_back': instance.flashcard_back,
      'description': instance.description,
      'question': instance.question,
      'options': instance.options,
      'user': instance.user,
    };

_$_User _$$_UserFromJson(Map<String, dynamic> json) => _$_User(
      name: json['name'] as String?,
      avatar: json['avatar'] as String?,
    );

Map<String, dynamic> _$$_UserToJson(_$_User instance) => <String, dynamic>{
      'name': instance.name,
      'avatar': instance.avatar,
    };

_$_Option _$$_OptionFromJson(Map<String, dynamic> json) => _$_Option(
      id: json['id'] as String?,
      answer: json['answer'] as String?,
    );

Map<String, dynamic> _$$_OptionToJson(_$_Option instance) => <String, dynamic>{
      'id': instance.id,
      'answer': instance.answer,
    };
