import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:get/get.dart';

import '../../../../model/answer.dart';
import '../../../../model/question.dart';
import '../../../../repository/local/taskRepository.dart';

part 'for_you_event.dart';
part 'for_you_state.dart';

class ForYouBloc extends Bloc<ForYouEvent, ForYouState> {
  ForYouBloc() : super(const ForYouState()) {
    on<GetForYou>(_mapGetForYouEventToState);
    on<SelectForYou>(_mapGetAnswerForYouEventToState);
  }
  final TaskRepository repository = Get.find(tag: (TaskRepository).toString());

  void _mapGetForYouEventToState(
      GetForYou event, Emitter<ForYouState> emit) async {
    try {
      emit(state.copyWith(status: ForYouStatus.loading));
      final forYou = await repository.getForYou();
      emit(
        state.copyWith(
          status: ForYouStatus.success,
          cards: forYou,
        ),
      );
    } catch (error) {
      emit(state.copyWith(status: ForYouStatus.error));
    }
  }

  void _mapGetAnswerForYouEventToState(
      SelectForYou event, Emitter<ForYouState> emit) async {
    try {
      emit(state.copyWith(status: ForYouStatus.selected));
      final forYou = await repository.getAnswer(event.cardId.toString());
      emit(
        state.copyWith(
            status: ForYouStatus.answer,
            answer: forYou.correct_options!.first.id ?? "",
            selectedAnswer: event.selectedAnswer),
      );
    } catch (error) {
      emit(state.copyWith(status: ForYouStatus.error));
    }
  }
}
