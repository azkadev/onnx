import 'package:flutter/material.dart';
import 'package:rive/rive.dart';

class CheckMark extends StatefulWidget {
  const CheckMark({super.key});

  @override
  CheckMarkState createState() => CheckMarkState();
}

class CheckMarkState extends State<CheckMark> {
  late RiveAnimationController _controller;

  @override
  void initState() {
    super.initState();
    _controller = SimpleAnimation("show");
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    print("rebuild");
    return SizedBox(
      height: 40,
      child: RiveAnimation.asset(
        "assets/rive/check_icon.riv",
        controllers: [_controller],
      ),
    );
  }
}
