import 'dart:typed_data';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:image_picker/image_picker.dart';
import 'package:memory_hive/logic/bloc/acitvity_edit_bloc/activity_edit_bloc.dart';

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
        onPressed: () async {
          final selectedImage =
              await ImagePicker().pickImage(source: ImageSource.gallery);
          if (selectedImage != null) {
            List<int> imageBytes = await selectedImage.readAsBytes();
            Uint8List uint8list = Uint8List.fromList(imageBytes);
            BlocProvider.of<ActivityEditBloc>(context)
                .add(ActivityChangedImageEvent(image: uint8list));
          } else {
            return;
          }
        },
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [Icon(Icons.image), Text("Add cover")],
        ));
  }
}
