// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'answer.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

Answer _$AnswerFromJson(Map<String, dynamic> json) {
  return _Answer.fromJson(json);
}

/// @nodoc
mixin _$Answer {
  int? get id =>
      throw _privateConstructorUsedError; // ignore: non_constant_identifier_names
  List<CorrectOption>? get correct_options =>
      throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $AnswerCopyWith<Answer> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AnswerCopyWith<$Res> {
  factory $AnswerCopyWith(Answer value, $Res Function(Answer) then) =
      _$AnswerCopyWithImpl<$Res, Answer>;
  @useResult
  $Res call({int? id, List<CorrectOption>? correct_options});
}

/// @nodoc
class _$AnswerCopyWithImpl<$Res, $Val extends Answer>
    implements $AnswerCopyWith<$Res> {
  _$AnswerCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? correct_options = freezed,
  }) {
    return _then(_value.copyWith(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      correct_options: freezed == correct_options
          ? _value.correct_options
          : correct_options // ignore: cast_nullable_to_non_nullable
              as List<CorrectOption>?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_AnswerCopyWith<$Res> implements $AnswerCopyWith<$Res> {
  factory _$$_AnswerCopyWith(_$_Answer value, $Res Function(_$_Answer) then) =
      __$$_AnswerCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int? id, List<CorrectOption>? correct_options});
}

/// @nodoc
class __$$_AnswerCopyWithImpl<$Res>
    extends _$AnswerCopyWithImpl<$Res, _$_Answer>
    implements _$$_AnswerCopyWith<$Res> {
  __$$_AnswerCopyWithImpl(_$_Answer _value, $Res Function(_$_Answer) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? correct_options = freezed,
  }) {
    return _then(_$_Answer(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      correct_options: freezed == correct_options
          ? _value._correct_options
          : correct_options // ignore: cast_nullable_to_non_nullable
              as List<CorrectOption>?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_Answer implements _Answer {
  const _$_Answer({this.id, final List<CorrectOption>? correct_options})
      : _correct_options = correct_options;

  factory _$_Answer.fromJson(Map<String, dynamic> json) =>
      _$$_AnswerFromJson(json);

  @override
  final int? id;
// ignore: non_constant_identifier_names
  final List<CorrectOption>? _correct_options;
// ignore: non_constant_identifier_names
  @override
  List<CorrectOption>? get correct_options {
    final value = _correct_options;
    if (value == null) return null;
    if (_correct_options is EqualUnmodifiableListView) return _correct_options;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  String toString() {
    return 'Answer(id: $id, correct_options: $correct_options)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_Answer &&
            (identical(other.id, id) || other.id == id) &&
            const DeepCollectionEquality()
                .equals(other._correct_options, _correct_options));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType, id, const DeepCollectionEquality().hash(_correct_options));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_AnswerCopyWith<_$_Answer> get copyWith =>
      __$$_AnswerCopyWithImpl<_$_Answer>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_AnswerToJson(
      this,
    );
  }
}

abstract class _Answer implements Answer {
  const factory _Answer(
      {final int? id, final List<CorrectOption>? correct_options}) = _$_Answer;

  factory _Answer.fromJson(Map<String, dynamic> json) = _$_Answer.fromJson;

  @override
  int? get id;
  @override // ignore: non_constant_identifier_names
  List<CorrectOption>? get correct_options;
  @override
  @JsonKey(ignore: true)
  _$$_AnswerCopyWith<_$_Answer> get copyWith =>
      throw _privateConstructorUsedError;
}

CorrectOption _$CorrectOptionFromJson(Map<String, dynamic> json) {
  return _CorrectOption.fromJson(json);
}

/// @nodoc
mixin _$CorrectOption {
  String? get id => throw _privateConstructorUsedError;
  String? get answer => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $CorrectOptionCopyWith<CorrectOption> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CorrectOptionCopyWith<$Res> {
  factory $CorrectOptionCopyWith(
          CorrectOption value, $Res Function(CorrectOption) then) =
      _$CorrectOptionCopyWithImpl<$Res, CorrectOption>;
  @useResult
  $Res call({String? id, String? answer});
}

/// @nodoc
class _$CorrectOptionCopyWithImpl<$Res, $Val extends CorrectOption>
    implements $CorrectOptionCopyWith<$Res> {
  _$CorrectOptionCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? answer = freezed,
  }) {
    return _then(_value.copyWith(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String?,
      answer: freezed == answer
          ? _value.answer
          : answer // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_CorrectOptionCopyWith<$Res>
    implements $CorrectOptionCopyWith<$Res> {
  factory _$$_CorrectOptionCopyWith(
          _$_CorrectOption value, $Res Function(_$_CorrectOption) then) =
      __$$_CorrectOptionCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String? id, String? answer});
}

/// @nodoc
class __$$_CorrectOptionCopyWithImpl<$Res>
    extends _$CorrectOptionCopyWithImpl<$Res, _$_CorrectOption>
    implements _$$_CorrectOptionCopyWith<$Res> {
  __$$_CorrectOptionCopyWithImpl(
      _$_CorrectOption _value, $Res Function(_$_CorrectOption) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? answer = freezed,
  }) {
    return _then(_$_CorrectOption(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String?,
      answer: freezed == answer
          ? _value.answer
          : answer // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_CorrectOption implements _CorrectOption {
  const _$_CorrectOption({this.id, this.answer});

  factory _$_CorrectOption.fromJson(Map<String, dynamic> json) =>
      _$$_CorrectOptionFromJson(json);

  @override
  final String? id;
  @override
  final String? answer;

  @override
  String toString() {
    return 'CorrectOption(id: $id, answer: $answer)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_CorrectOption &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.answer, answer) || other.answer == answer));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, id, answer);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_CorrectOptionCopyWith<_$_CorrectOption> get copyWith =>
      __$$_CorrectOptionCopyWithImpl<_$_CorrectOption>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_CorrectOptionToJson(
      this,
    );
  }
}

abstract class _CorrectOption implements CorrectOption {
  const factory _CorrectOption({final String? id, final String? answer}) =
      _$_CorrectOption;

  factory _CorrectOption.fromJson(Map<String, dynamic> json) =
      _$_CorrectOption.fromJson;

  @override
  String? get id;
  @override
  String? get answer;
  @override
  @JsonKey(ignore: true)
  _$$_CorrectOptionCopyWith<_$_CorrectOption> get copyWith =>
      throw _privateConstructorUsedError;
}
