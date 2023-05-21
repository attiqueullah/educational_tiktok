part of 'for_you_bloc.dart';

abstract class ForYouEvent extends Equatable {
  const ForYouEvent();

  @override
  List<Object> get props => [];
}

class GetForYou extends ForYouEvent {}

class SelectForYou extends ForYouEvent {
  const SelectForYou({
    required this.cardId,
    required this.selectedAnswer,
  });
  final int cardId;
  final String selectedAnswer;

  @override
  List<Object> get props => [cardId, selectedAnswer];
}
