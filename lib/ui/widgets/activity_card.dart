// ignore_for_file: avoid_unnecessary_containers

import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:memory_hive/constants.dart';
import 'package:memory_hive/data/activity/activity_model.dart';

class ActivityCard extends StatelessWidget {
  final ActivityModel activity;
  const ActivityCard({super.key, required this.activity});

  @override
  Widget build(BuildContext context) {
    const double sizedBoxHeight = 14;
    return Container(
      decoration: BoxDecoration(
        color: kColorWhite,
        borderRadius: BorderRadius.circular(8)
      ),
      width: MediaQuery.of(context).size.width,
      
      margin: EdgeInsets.symmetric(horizontal: 10, vertical: 5),
      child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
        // if (activity.image != null)
        ClipRRect(
          borderRadius: BorderRadius.vertical(top: Radius.circular(8)),
          child: Image.asset(
            "assets/images/Photo JPEG.jpg",
            fit: BoxFit.cover,
            width: MediaQuery.of(context).size.width - 20,
            height: 50,
          ),
        ),
        // Image.memory(activity.image!,fit: BoxFit.fill, height: 250,)
        Padding(
          padding: const EdgeInsets.only(left: 12),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(height: sizedBoxHeight),
              Text(activity.title, style: kTextDefaultBold),
              if (activity.description != null)
                Column(
                  children: [
                    SizedBox(height: sizedBoxHeight),
                    Text(
                      activity.description!,
                      style: kTextDefault,
                    ),
                  ],
                ),
              if (activity.time != null)
                Column(
                  children: [
                    SizedBox(height: sizedBoxHeight),
                    Text(
                      activity.time.toString(),
                      style: kTextDefault,
                    ),
                  ],
                ),
              SizedBox(height: sizedBoxHeight),
            ],
          ),
        )
      ]),
    );
  }
}
