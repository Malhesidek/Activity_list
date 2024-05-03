// ignore_for_file: avoid_unnecessary_containers

import 'package:flutter/material.dart';
import 'package:memory_hive/constants.dart';
import 'package:memory_hive/data/activity/activity_model.dart';

class ActivityCard extends StatelessWidget {
  final ActivityModel activity;
  const ActivityCard({super.key, required this.activity});

  @override
  Widget build(BuildContext context) {
    return Container(
      color: kColorWhite,
      margin: EdgeInsets.symmetric(horizontal: 10, vertical: 5),
      child: Column(children: [
        // if (activity.image != null)
          // read about rect in image
          Image.asset("assets/images/Photo JPEG.jpg", fit: BoxFit.fill, height: 250,),
          // Image.memory(activity.image!,fit: BoxFit.fill, height: 250,)
        SizedBox(height: 10),
        Text(activity.title, style: kTextDefaultBold),
        if (activity.description != null)
          Text(activity.description!, style: kTextDefault),
        SizedBox(height: 10),
        if (activity.time != null)
          Text(activity.time.toString(), style: kTextDefault),
      ]),
    );
  }
}
