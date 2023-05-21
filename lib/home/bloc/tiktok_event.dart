part of 'tiktok_bloc.dart';

abstract class TiktokEvent extends Equatable {
  const TiktokEvent();

  @override
  List<Object> get props => [];
}

class Following extends TiktokEvent {}

class ForYou extends TiktokEvent {}
