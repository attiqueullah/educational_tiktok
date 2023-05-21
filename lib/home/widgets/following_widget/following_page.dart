import 'package:education_tiktok/home/widgets/following_widget/side_actions.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../model/page.dart';
import 'bloc/following_bloc.dart';
import 'bottom_view.dart';
import 'front_card.dart';

class FollowingPage extends StatefulWidget {
  const FollowingPage({super.key, required this.page});

  final PageModel page;
  @override
  State<FollowingPage> createState() => _FollowingPageState();
}

class _FollowingPageState extends State<FollowingPage>
    with WidgetsBindingObserver {
  @override
  void initState() {
    WidgetsBinding.instance.addObserver(this);
    super.initState();

    context.read<FollowingBloc>().add(GetFollowing(page: widget.page));
  }

  @override
  void didChangeAppLifecycleState(AppLifecycleState state) {
    if (state == AppLifecycleState.resumed) {
      // Widget has finished loading
      // Perform any necessary actions here

    }
  }

  @override
  void dispose() {
    WidgetsBinding.instance.removeObserver(this);
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<FollowingBloc, FollowingState>(
        builder: (context, state) {
      if (state.status.isInitial || state.status.isLoading) {
        return const Center(
          child: CircularProgressIndicator(),
        );
      } else if (state.status.isSuccess) {
        if (widget.page.card == null) {
          return const Center(
            child: CircularProgressIndicator(),
          );
        } else {
          return Column(mainAxisAlignment: MainAxisAlignment.end, children: [
            Container(
              padding: const EdgeInsets.only(left: 15),
              color: const Color.fromRGBO(255, 255, 255, 0.0),
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.end,
                children: [
                  FrontCard(
                    card: widget.page.card!,
                  ),
                  SideMenu(
                    user: widget.page.card!.user!,
                  )
                ],
              ),
            ),
            const SizedBox(
              height: 15,
            ),
            BottomView(
                title: 'Playlist - Unit 5: ${widget.page.card!.playlist ?? ""}')
          ]);
        }
      } else {
        return const Center(
          child: CircularProgressIndicator(),
        );
      }
    });
  }
}
