part of 'following_bloc.dart';

enum FollowingStatus { initial, success, error, loading, selected }

extension FollowingStatusX on FollowingStatus {
  bool get isInitial => this == FollowingStatus.initial;
  bool get isSuccess => this == FollowingStatus.success;
  bool get isError => this == FollowingStatus.error;
  bool get isLoading => this == FollowingStatus.loading;
  bool get isSelected => this == FollowingStatus.selected;
}

class FollowingState extends Equatable {
  const FollowingState(
      {this.status = FollowingStatus.initial,
      List<PageModel>? cards,
      this.card = 0,
      this.totalPages = 0})
      : cards = cards ?? const [];

  final List<PageModel> cards;
  final FollowingStatus status;
  final int card;
  final int totalPages;

  @override
  List<Object> get props => [status, card, totalPages];

  FollowingState copyWith(
      {List<PageModel>? cards,
      FollowingStatus? status,
      int? card,
      int? totalPages}) {
    return FollowingState(
      cards: cards ?? this.cards,
      status: status ?? this.status,
      card: card ?? this.card,
      totalPages: totalPages ?? this.totalPages,
    );
  }
}
