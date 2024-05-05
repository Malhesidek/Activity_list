import 'package:flutter/material.dart';

class ButtonAddCover extends StatefulWidget {
  const ButtonAddCover({super.key});

  @override
  State<ButtonAddCover> createState() => _ButtonAddCoverState();
}

class _ButtonAddCoverState extends State<ButtonAddCover> {
  @override
  Widget build(BuildContext context) {
    return OutlinedButton(
                style: OutlinedButton.styleFrom(
                  shape: RoundedRectangleBorder(),
                ),
                  onPressed: () {},
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [Icon(Icons.image), Text("Add cover")],
                  ));
  }
}