import 'package:flutter/material.dart';
import 'package:memory_hive/constants.dart';

class ButtonSetTime extends StatefulWidget {
  const ButtonSetTime({super.key});

  @override
  State<ButtonSetTime> createState() => _ButtonSetTimeState();
}

class _ButtonSetTimeState extends State<ButtonSetTime> {
  @override
  Widget build(BuildContext context) {
    return OutlinedButton(
        style: ButtonStyle(alignment: Alignment.center, backgroundColor: MaterialStateProperty.all(kColorPurple)),
        onPressed: () {},
        child: Text("Set time", style: TextStyle(color: kColorWhite,)));
  }
}
