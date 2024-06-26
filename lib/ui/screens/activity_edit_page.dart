// ignore_for_file: prefer_const_literals_to_create_immutables

import 'dart:convert';
import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_quill/flutter_quill.dart';
import 'package:memory_hive/constants.dart';
import 'package:memory_hive/data/activity/activity_model.dart';
import 'package:memory_hive/logic/bloc/activity_edit_bloc/activity_edit_bloc.dart';
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
  late quill.QuillController _quillController;

  @override
  void initState() {
    super.initState();
    activityEditBloc = ActivityEditBloc(widget.givenActivity);
    _quillController = quill.QuillController.basic();
    _checkQuillvalue();
  }

  @override
  void dispose() {
    _quillController.dispose();
    activityEditBloc.close();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => activityEditBloc,
      child: SafeArea(
          child: Scaffold(
        appBar: AppBar(
          title: Text(
            "Edit Activity",
            style: TextStyle(
                color: kColorBlack, fontFamily: kFontNunitoSans, fontSize: 22),
          ),
          leading: BlocBuilder<ActivityEditBloc, ActivityEditState>(
            builder: (context, state) {
              return IconButton(
                icon: Icon(Icons.arrow_back_ios_new),
                onPressed: _closeActivity,
              );
            },
          ),
          actions: [
            BlocBuilder<ActivityEditBloc, ActivityEditState>(
              builder: (context, state) {
                return IconButton(
                    onPressed: _saveActivity, icon: Icon(Icons.save));
              },
            ),
          ],
        ),
        body: SingleChildScrollView(
          child: Column(
            children: [
              BlocBuilder<ActivityEditBloc, ActivityEditState>(
                  builder: (context, state) => state.maybeWhen(
                      changed: (activity) {
                        if (activity.image != null)
                          return ChangeCoverWidget();
                        else
                          return ButtonAddCover();
                      },
                      orElse: () => ButtonAddCover())),
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

  _checkQuillvalue() {
    activityEditBloc.state.maybeWhen(
        changed: (activity) {
          if (activity.description != null)
            _quillController.document =
                Document.fromJson(jsonDecode(activity.description!));
        },
        orElse: () {});
    // if ((activityEditBloc.state as ActivityEditChangedState)
    //         .activity
    //         .description !=
    //     null) {
    //   _quillController.document = Document.fromJson(jsonDecode(
    //       (activityEditBloc.state as ActivityEditChangedState)
    //           .activity
    //           .description!));
    // }
  }

  _closeActivity() {
    Navigator.pop(context);
  }

  _saveActivity() {
    return activityEditBloc.state.maybeWhen(
        changed: (activity) async {
          if (activity.title == "") {
            return null;
          } else {
            activityEditBloc.add(ActivityEditEvent.changedDescription(
                description:
                    jsonEncode(_quillController.document.toDelta().toJson())));
            // log(jsonEncode(_quillController.document.toDelta().toJson()));
            // log((activityEditBloc.state as ActivityEditChangedState)
            //     .activity
            //     .description
            //     .toString());
            while (activity.description !=
                jsonEncode(_quillController.document.toDelta().toJson())) {
              await Future.delayed(const Duration(milliseconds: 100));
            }
            Navigator.pop(
              context,
              activityEditBloc.state.maybeWhen(
                changed: (activity) => activity,
                orElse: () {},
              ),
            );
          }
        },
        orElse: () {});
  }
}
