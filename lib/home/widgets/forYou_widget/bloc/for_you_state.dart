part of 'for_you_bloc.dart';

enum ForYouStatus { initial, success, error, loading, selected, answer }

extension ForYouStatusX on ForYouStatus {
  bool get isInitial => this == ForYouStatus.initial;
  bool get isSuccess => this == ForYouStatus.success;
  bool get isError => this == ForYouStatus.error;
  bool get isLoading => this == ForYouStatus.loading;
  bool get isSelected => this == ForYouStatus.selected;
  bool get isAnswered => this == ForYouStatus.answer;
}

class ForYouState extends Equatable {
  const ForYouState(
      {this.status = ForYouStatus.initial,
      this.cards,
      this.answer,
      this.selectedAnswer});

  final Question? cards;
  final String? answer;
  final String? selectedAnswer;
  final ForYouStatus status;

  @override
  List<Object> get props => [status, answer ?? ""];

  ForYouState copyWith({
    Question? cards,
    ForYouStatus? status,
    int? card,
    String? answer,
    String? selectedAnswer,
  }) {
    return ForYouState(
      cards: cards ?? this.cards,
      answer: answer ?? this.answer,
      status: status ?? this.status,
      selectedAnswer: selectedAnswer ?? this.selectedAnswer,
    );
  }
}
