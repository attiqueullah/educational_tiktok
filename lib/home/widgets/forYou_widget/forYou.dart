// ignore: file_names
import 'package:education_tiktok/home/widgets/forYou_widget/bloc/for_you_bloc.dart';
import 'package:education_tiktok/home/widgets/forYou_widget/mcq_view.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import '../following_widget/bottom_view.dart';
import '../following_widget/side_actions.dart';

class ForYouView extends StatelessWidget {
  const ForYouView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<ForYouBloc, ForYouState>(
      builder: (context, state) {
        if (state.status.isLoading) {
          return const Center(
            child: CircularProgressIndicator(),
          );
        } else if (state.status.isSuccess ||
            state.status.isSelected ||
            state.status.isAnswered) {
          return Column(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              Container(
                padding: const EdgeInsets.only(left: 15),
                color: const Color.fromRGBO(255, 255, 255, 0.0),
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.end,
                  children: [
                    MCQView(
                      card: state.cards!,
                    ),
                    SideMenu(user: state.cards!.user!)
                  ],
                ),
              ),
              const SizedBox(
                height: 15,
              ),
              BottomView(
                  title: 'Playlist - Unit 5: ${state.cards!.playlist ?? ""}')
            ],
          );
        } else {
          return const Center(
            child: CircularProgressIndicator(),
          );
        }
      },
    );
  }
}
