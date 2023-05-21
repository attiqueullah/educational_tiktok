import 'package:cached_network_image/cached_network_image.dart';
import 'package:education_tiktok/model/question.dart';
import 'package:flutter/material.dart';

class SideMenu extends StatefulWidget {
  const SideMenu({super.key, required this.user});

  final User user;
  @override
  State<SideMenu> createState() => _SideMenuState();
}

class _SideMenuState extends State<SideMenu> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(right: 10),
      child: Column(
        children: [
          userIcon(widget.user.avatar ?? ""),
          const SizedBox(height: 25),
          action(Icons.favorite, "87"),
          const SizedBox(height: 15),
          action(Icons.sms_rounded, "87"),
          const SizedBox(height: 15),
          action(Icons.directions, "87"),
          const SizedBox(height: 15),
          action(Icons.turned_in, "87"),
          const SizedBox(height: 15),
          action(Icons.autorenew, "Flip")
        ],
      ),
    );
  }

  Widget action(IconData icon, String count) {
    return Column(
      children: [
        Icon(
          icon,
          color: Colors.white,
          size: 35.0,
        ),
        const SizedBox(height: 5),
        Text(count,
            style: const TextStyle(
                fontSize: 12.0,
                color: Colors.white,
                fontStyle: FontStyle.normal,
                fontWeight: FontWeight.normal,
                decoration: TextDecoration.none))
      ],
    );
  }

  Widget userIcon(String url) {
    return Container(
      width: 40,
      height: 40,
      decoration: BoxDecoration(
        shape: BoxShape.circle,
        border: Border.all(
          color: Colors.white,
          width: 2.0,
        ),
      ),
      child: CachedNetworkImage(
        width: 35,
        height: 35,
        imageUrl: url,
        placeholder: (context, url) => const CircularProgressIndicator(),
        errorWidget: (context, url, error) => const Icon(Icons.error),
      ),
    );
  }
}
