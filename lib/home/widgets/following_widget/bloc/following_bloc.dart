// ignore: depend_on_referenced_packages
import 'package:bloc/bloc.dart';
import 'package:education_tiktok/model/page.dart';
import 'package:education_tiktok/model/question.dart';
import 'package:equatable/equatable.dart';
import 'package:get/get.dart';
import 'package:uuid/uuid.dart';

import '../../../../repository/local/taskRepository.dart';

part 'following_event.dart';
part 'following_state.dart';

class FollowingBloc extends Bloc<FollowingEvent, FollowingState> {
  FollowingBloc() : super(FollowingState()) {
    on<GetFollowing>(_mapGetFollowingEventToState);
    on<UpdateFollowing>(_mapUpdateFollowingEventToState);
  }

  final TaskRepository repository = Get.find(tag: (TaskRepository).toString());

  void _mapGetFollowingEventToState(
      GetFollowing event, Emitter<FollowingState> emit) async {
    try {
      emit(state.copyWith(status: FollowingStatus.loading));
      if (event.page.card != null) {
        emit(state.copyWith(
          status: FollowingStatus.success,
          cards: state.cards,
        ));
        return;
      }
      final following = await repository.getFollowings();
      event.page.card = following;
      final index =
          (state.cards.indexWhere((element) => element.uid == event.page.uid));
      state.cards[index] = event.page;
      emit(
        state.copyWith(
          status: FollowingStatus.success,
          cards: state.cards,
        ),
      );
    } catch (error) {
      emit(state.copyWith(status: FollowingStatus.error));
    }
  }

  void _mapUpdateFollowingEventToState(
      UpdateFollowing event, Emitter<FollowingState> emit) async {
    try {
      List<int> numbers = List.generate(10, (index) => index);
      var slots = numbers
          .map((number) => PageModel(uid: const Uuid().v4(), card: null))
          .toList();
      List<PageModel> cards = state.cards.toList();
      cards.addAll(slots);

      emit(state.copyWith(cards: cards, totalPages: 1));
    } catch (error) {
      emit(state.copyWith(status: FollowingStatus.error));
    }
  }
}
