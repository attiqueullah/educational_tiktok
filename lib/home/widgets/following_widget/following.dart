import 'package:education_tiktok/home/widgets/following_widget/bloc/following_bloc.dart';
import 'package:education_tiktok/home/widgets/following_widget/following_page.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:get/get.dart';

class FollowingView extends StatefulWidget {
  const FollowingView({super.key});

  @override
  State<FollowingView> createState() => _FollowingViewState();
}

class _FollowingViewState extends State<FollowingView>
    with WidgetsBindingObserver {
  final PageController _pageController =
      PageController(initialPage: 0); // Replace with your total number of pages
  int _currentPage = 0;

  @override
  void initState() {
    super.initState();
  }

  @override
  void dispose() {
    _pageController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<FollowingBloc, FollowingState>(
      builder: (context, state) {
        return PageView.builder(
          scrollDirection: Axis.vertical,
          controller: _pageController,
          itemCount: state.cards.length,
          onPageChanged: (int page) {
            _currentPage = page;
            if (page == state.cards.length - 2) {
              context.read<FollowingBloc>().add(const UpdateFollowing());
            }
          },
          itemBuilder: (context, index) {
            return Container(
              alignment: Alignment.center,
              child: FollowingPage(page: state.cards[index]),
            );
          },
        );
      },
    );
  }
}
