// ignore_for_file: prefer_const_literals_to_create_immutables

import 'dart:convert';
import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_quill/flutter_quill.dart';
import 'package:memory_hive/constants.dart';
import 'package:memory_hive/data/activity/activity_model.dart';
import 'package:memory_hive/logic/bloc/acitvity_edit_bloc/activity_edit_bloc.dart';
import 'package:memory_hive/ui/widgets/button_add_cover_widget.dart';
import 'package:memory_hive/ui/widgets/button_set_time_widget.dart';
import 'package:memory_hive/ui/widgets/change_cover_widget.dart';
import 'package:memory_hive/ui/widgets/text_field_title_widget.dart';
import 'package:flutter_quill/flutter_quill.dart' as quill;

class ActivityEditPage extends StatefulWidget {
  const ActivityEditPage({super.key, required this.givenActivity});
  final ActivityModel givenActivity;

  @override
  State<ActivityEditPage> createState() => _ActivityEditPageState();
}

class _ActivityEditPageState extends State<ActivityEditPage> {
  late ActivityEditBloc activityEditBloc;

  @override
  void initState() {
    super.initState();
    activityEditBloc = ActivityEditBloc(widget.givenActivity);
  }

  @override
  Widget build(BuildContext context) {
    final quill.QuillController _quillController =
        quill.QuillController.basic();
    return BlocProvider(
      create: (context) => activityEditBloc,
      child: SafeArea(
          child: Scaffold(
        appBar: AppBar(
          title: Text(
            "Edit Activity",
            style: kTextAppTitle,
          ),
          leading: BlocBuilder<ActivityEditBloc, ActivityEditState>(
            builder: (context, state) {
              return IconButton(
                icon: Icon(Icons.arrow_back_ios_new),
                onPressed: () async {
                  if ((state as ActivityEditChangedState).activity.title ==
                      "") {
                    return null;
                  } else {
                    activityEditBloc.add(ActivityChangedDescriptionEvent(
                        description: jsonEncode(
                            _quillController.document.toDelta().toJson())));
                    log(jsonEncode(
                        _quillController.document.toDelta().toJson()));
                    log((activityEditBloc.state as ActivityEditChangedState)
                        .activity
                        .description
                        .toString());
                    while ((activityEditBloc.state as ActivityEditChangedState)
                            .activity
                            .description !=
                        jsonEncode(
                            _quillController.document.toDelta().toJson())) {
                      await Future.delayed(const Duration(milliseconds: 100));
                    }
                    Navigator.pop(
                        context,
                        (activityEditBloc.state as ActivityEditChangedState)
                            .activity);
                  }
                },
              );
            },
          ),
        ),
        body: SingleChildScrollView(
          child: Column(
            children: [
              BlocBuilder<ActivityEditBloc, ActivityEditState>(
                builder: (context, state) {
                  if (state is ActivityEditChangedState &&
                      state.activity.image != null) {
                    return ChangeCoverWidget();
                  } else {
                    return ButtonAddCover();
                  }
                },
              ),
              Row(
                children: [
                  Expanded(flex: 2, child: TextFieldTitle()),
                  Expanded(flex: 1, child: ButtonSetTime())
                ],
              ),
              Divider(),
              quill.QuillEditor.basic(
                  configurations: QuillEditorConfigurations(
                      controller: _quillController,
                      placeholder: "Add your text here...",
                      sharedConfigurations: const QuillSharedConfigurations())),
            ],
          ),
        ),
      )),
    );
  }
}
