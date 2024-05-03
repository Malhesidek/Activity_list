// ignore_for_file: avoid_unnecessary_containers

import 'package:flutter/material.dart';
import 'package:memory_hive/data/activity/activity_model.dart';

class ActivityCard extends StatelessWidget {
  final ActivityModel activity;
  const ActivityCard({super.key, required this.activity});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 10, vertical: 5),
      child: Column(children: [
        if (activity.image != null)
          // read about rect in image
          Image.memory(activity.image!, )
      ]),
    );
  }
}
