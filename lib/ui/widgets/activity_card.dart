// ignore_for_file: avoid_unnecessary_containers

import 'dart:convert';

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
          color: kColorWhite, borderRadius: BorderRadius.circular(8)),
      width: MediaQuery.of(context).size.width,
      margin: EdgeInsets.symmetric(horizontal: 10, vertical: 5),
      child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
        if (activity.image != null)
          ClipRRect(
              borderRadius: BorderRadius.vertical(top: Radius.circular(8)),
              child: Image.memory(
                activity.image!,
                fit: BoxFit.cover,
                height: 50,
                width: MediaQuery.of(context).size.width - 20,
              )),
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
                      jsonToPlainText(activity.description!),
                      style: kTextDefault,
                    ),
                  ],
                ),
              if (activity.time != null)
                Column(
                  children: [
                    SizedBox(height: sizedBoxHeight),
                    Text(
                      "${activity.time!.hour}:${activity.time!.minute.toString().length == 1 ? "0${activity.time!.minute}" : activity.time!.minute}",
                      style: kTextDefault,
                    ),
                  ],
                ),
              SizedBox(height: sizedBoxHeight),
              // if (BlocProvider.of<ActivitiesBloc>(context).state
              //     is ActivitiesChangedState)
              //   Text((BlocProvider.of<ActivitiesBloc>(context).state
              //           as ActivitiesChangedState)
              //       .activities
              //       .toString())
            ],
          ),
        )
      ]),
    );
  }
}

jsonToPlainText(String jsonString) {
  List<dynamic> parsedJson = jsonDecode(jsonString);
  List<String> textValues = [];
  // ignore: avoid_function_literals_in_foreach_calls
  parsedJson.forEach((element) {
    String textValue = element["insert"];
    textValues.add(textValue);
  });
  String textResult = textValues.join();
  if (textResult.length > 50) {
    if (textResult.split(' ').length > 5) {
      return textResult.split(' ').getRange(0, 4).join(' ');
    }
    else {
      return textResult.substring(0,50);
    }
  }
  return textResult;
}
