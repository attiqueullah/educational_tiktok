import 'dart:ffi';

import 'package:education_tiktok/home/bloc/tiktok_bloc.dart';
import 'package:education_tiktok/home/home.dart';
import 'package:education_tiktok/home/widgets/following_widget/bloc/following_bloc.dart';
import 'package:education_tiktok/home/widgets/forYou_widget/bloc/for_you_bloc.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'package:get/get.dart';

import '../repository/local/taskRepository.dart';

typedef CategoryCLicked = Function();

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: RepositoryProvider(
        create: (context) => Get.find(tag: (TaskRepository).toString()),
        child: MultiBlocProvider(
          providers: [
            BlocProvider<TiktokBloc>(
              create: (context) => TiktokBloc()
                ..add(
                  Following(),
                ),
            ),
            BlocProvider<FollowingBloc>(
              create: (context) => FollowingBloc()
                ..add(
                  const UpdateFollowing(),
                ),
            ),
            BlocProvider<ForYouBloc>(
              create: (context) => ForYouBloc()
                ..add(
                  GetForYou(),
                ),
            ),
          ],
          child: const Home(title: 'Flutter Demo Home Page'),
        ),
      ),
    );
  }
}
