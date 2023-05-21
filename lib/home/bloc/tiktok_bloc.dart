// ignore: depend_on_referenced_packages
import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';

part 'tiktok_event.dart';
part 'tiktok_state.dart';

class TiktokBloc extends Bloc<TiktokEvent, TiktokState> {
  TiktokBloc() : super(const TiktokState()) {
    on<Following>(_mapGetFollowingEventToState);
    on<ForYou>(_mapGetForYouEventToState);
  }

  void _mapGetFollowingEventToState(
      Following event, Emitter<TiktokState> emit) async {
    emit(
      state.copyWith(
        status: TikTokStatus.following,
      ),
    );
  }

  void _mapGetForYouEventToState(
      ForYou event, Emitter<TiktokState> emit) async {
    emit(
      state.copyWith(status: TikTokStatus.forYou),
    );
  }
}
