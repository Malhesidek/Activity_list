import 'dart:typed_data';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:image_picker/image_picker.dart';
import 'package:memory_hive/constants.dart';
import 'package:memory_hive/logic/bloc/acitvity_edit_bloc/activity_edit_bloc.dart';

class ChangeCoverWidget extends StatefulWidget {
  const ChangeCoverWidget({super.key});

  @override
  State<ChangeCoverWidget> createState() => _ChangeCoverWidgetState();
}

class _ChangeCoverWidgetState extends State<ChangeCoverWidget> {
  late ActivityEditBloc activityEditBloc;

  @override
  void initState() {
    super.initState();
    activityEditBloc = BlocProvider.of<ActivityEditBloc>(context);
  }

  @override
  void dispose() {
    activityEditBloc.close();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
        onTap: () {
          showModalBottomSheet(
              context: context,
              isScrollControlled: true,
              builder: (BuildContext context) {
                return Container(
                    width: double.infinity,
                    child: Column(
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        Text(
                          "Change cover",
                          style: TextStyle(
                              color: kColorBlack,
                              fontSize: 28,
                              fontWeight: FontWeight.bold),
                        ),
                        ListTile(
                          leading: Icon(Icons.upload),
                          title: Text("Upload cover", style: kTextDefault),
                          onTap: () async {
                            final selectedImage = await ImagePicker()
                                .pickImage(source: ImageSource.gallery);
                            if (selectedImage != null) {
                              List<int> imageBytes =
                                  await selectedImage.readAsBytes();
                              Uint8List uint8list =
                                  Uint8List.fromList(imageBytes);
                              activityEditBloc.add(
                                  ActivityChangedImageEvent(image: uint8list));
                            } else
                              return;
                            Navigator.pop(context);
                          },
                        ),
                        ListTile(
                          leading: Icon(Icons.close),
                          title: Text("Remove", style: kTextDefault),
                          onTap: () {
                            activityEditBloc
                                .add(ActivityChangedImageEvent(image: null));
                            Navigator.pop(context);
                          },
                        )
                      ],
                    ));
              });
        },
        child: Image.memory((activityEditBloc.state as ActivityEditChangedState)
            .activity
            .image!));
  }
}
