import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:memory_hive/constants.dart';
import 'package:memory_hive/logic/bloc/acitvity_edit_bloc/activity_edit_bloc.dart';

class TextFieldTitle extends StatefulWidget {
  TextFieldTitle({super.key});

  @override
  State<TextFieldTitle> createState() => _TextFieldTitleState();
}

class _TextFieldTitleState extends State<TextFieldTitle> {
  @override
  Widget build(BuildContext context) {
    return BlocBuilder<ActivityEditBloc, ActivityEditState>(
      builder: (context, state) {
        return TextFormField(
          style: TextStyle(color: kColorBlack),
          initialValue: (state as ActivityEditChangedState).activity.title,
          decoration: InputDecoration(
            border: OutlineInputBorder(borderSide: BorderSide.none),
            hintText: "Activity Name",
            hintStyle: TextStyle(fontWeight: FontWeight.bold)
          ),
          
          onChanged: (text) {
            setState(() {
              BlocProvider.of<ActivityEditBloc>(context).add(ActivityChangedTitleEvent(title: text));
              log("Title: ${(state as ActivityEditChangedState).activity.title}");
            });
          },
        );
      },
    );
  }
}
