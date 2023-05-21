import 'package:flutter/material.dart';

class BottomView extends StatefulWidget {
  const BottomView({super.key, required this.title});
  final String title;

  @override
  State<BottomView> createState() => _BottomViewState();
}

class _BottomViewState extends State<BottomView> {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.only(left: 15),
      width: MediaQuery.of(context).size.width,
      height: 40,
      color: const Color.fromRGBO(255, 255, 255, 0.2),
      child: Center(
        widthFactor: 400.0,
        // ignore: prefer_const_literals_to_create_immutables
        child: Row(children: [
          const Icon(
            Icons.smart_display,
            color: Colors.white,
            size: 20.0,
          ),
          const SizedBox(width: 10.0),
          Text(widget.title,
              style: const TextStyle(
                  fontSize: 14.0,
                  color: Colors.white,
                  fontStyle: FontStyle.normal,
                  fontWeight: FontWeight.bold,
                  decoration: TextDecoration.none)),
          const Spacer(),
          const Icon(
            Icons.chevron_right,
            color: Colors.white,
            size: 20.0,
          ),
        ]),
      ),
    );
  }
}
