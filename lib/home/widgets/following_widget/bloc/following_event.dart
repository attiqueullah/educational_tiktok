part of 'following_bloc.dart';

abstract class FollowingEvent extends Equatable {
  const FollowingEvent();

  @override
  List<Object> get props => [];
}

class GetFollowing extends FollowingEvent {
  const GetFollowing({
    required this.page,
  });
  final PageModel page;

  @override
  List<Object> get props => [page];
}

// ignore: must_be_immutable
class UpdateFollowing extends FollowingEvent {
  const UpdateFollowing();

  @override
  List<Object> get props => [];
}

class SelectFollowing extends FollowingEvent {
  const SelectFollowing({
    required this.card,
  });
  final Question card;

  @override
  List<Object> get props => [card];
}
