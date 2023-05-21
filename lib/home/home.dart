import 'dart:async';

import 'package:education_tiktok/home/bloc/tiktok_bloc.dart';
import 'package:education_tiktok/home/widgets/following_widget/following.dart';
import 'package:education_tiktok/home/widgets/forYou_widget/bloc/for_you_bloc.dart';
import 'package:education_tiktok/home/widgets/forYou_widget/forYou.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:timeago/timeago.dart' as timeago;

class Home extends StatefulWidget {
  const Home({super.key, required this.title});

  // This widget is the h%%ome page of your application. It is stateful, meaning
  // that it has a State object (defined below) that contains fields that affect
  // how it looks.

  // This class is the configuration for the state. It holds the values (in this
  // case the title) provided by the parent (in this case the App widget) and
  // used by the build method of the State. Fields in a Widget subclass are
  // always marked "final".

  final String title;

  @override
  State<Home> createState() => _HomePageState();
}

class _HomePageState extends State<Home> with SingleTickerProviderStateMixin {
  int seconds = 0;
  late Timer _timer;
  late DateTime fifteenAgo;

  @override
  void initState() {
    super.initState();
    startTimer();
  }

  @override
  void dispose() {
    _timer.cancel();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<TiktokBloc, TiktokState>(
      builder: (context, state) {
        return Scaffold(
          appBar: AppBar(
              backgroundColor: Colors.transparent,
              automaticallyImplyLeading: false,
              centerTitle: true,
              leading: timer(),
              actions: const [
                Icon(
                  Icons.search,
                  color: Colors.white,
                  size: 25.0,
                )
              ],
              title: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  TextButton(
                      onPressed: (() => {
                            context.read<TiktokBloc>().add(Following()),
                            context.read<ForYouBloc>().add(GetForYou())
                          }),
                      child: buttonTitle(
                          'Following', state.status.isFollowing == true)),
                  const SizedBox(width: 15),
                  TextButton(
                      onPressed: (() =>
                          {context.read<TiktokBloc>().add(ForYou())}),
                      child: buttonTitle(
                          'For You', state.status.isForYou == true)),
                ],
              )),
          backgroundColor: Colors.black,
          body: body(state),
        );
      },
    );
  }

  Widget body(TiktokState status) {
    if (status.status.isFollowing == true) {
      return const FollowingView();
    } else {
      return const ForYouView();
    }
  }

  void startTimer() {
    const oneSec = Duration(seconds: 1);
    _timer = Timer.periodic(oneSec, (Timer timer) {
      setState(() {
        seconds++;
      });
    });
  }

  Widget timer() {
    return Row(
      children: [
        const Icon(
          Icons.alarm,
          color: Colors.white,
          size: 25.0,
        ),
        Text(
            timeago.format(DateTime.now().subtract(Duration(seconds: seconds)),
                locale: 'en_short'),
            style: const TextStyle(
                fontSize: 14.0,
                color: Colors.white,
                fontStyle: FontStyle.normal,
                fontWeight: FontWeight.normal,
                decoration: TextDecoration.none))
      ],
    );
  }

  Widget buttonTitle(String title, bool isSelected) {
    return Column(
      children: [
        Text(
          title,
          style: TextStyle(
            fontSize: 18,
            fontStyle: FontStyle.normal,
            fontWeight: isSelected ? FontWeight.bold : FontWeight.normal,
            color: Colors.white,
          ),
        ),
        const SizedBox(
          height: 5,
        ),
        AnimatedContainer(
            width: 25,
            height: 3,
            curve: Curves.fastOutSlowIn,
            color: isSelected ? Colors.white : Colors.transparent,
            duration: const Duration(seconds: 1))
      ],
    );
  }
}
