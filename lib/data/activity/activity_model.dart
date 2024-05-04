import 'dart:convert';
import 'dart:typed_data';

import 'package:flutter/material.dart';

class ActivityModel {
  final int? id;
  final DateTime date;
  Uint8List? image;
  String title;
  String? description;
  TimeOfDay? time; // Додав TimeOfDay з пакету flutter/material.dart

  ActivityModel({
    this.id,
    required this.date,
    this.image,
    required this.title,
    this.description,
    this.time,
  });

  ActivityModel copyWith({
    int? id,
    DateTime? date,
    Uint8List? image,
    String? title,
    String? description,
    TimeOfDay? time,
  }) {
    return ActivityModel(
      id: id ?? this.id,
      date: date ?? this.date,
      image: image ?? this.image,
      title: title ?? this.title,
      description: description ?? this.description,
      time: time ?? this.time,
    );
  }

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'id': id,
      'date': date.toIso8601String().substring(0, 10),
      'image': image != null ? base64Encode(image!) : null,
      'title': title,
      'description': description,
      'time': time != null ? '${time!.hour}:${time!.minute}' : null, // Форматування часу до рядка "HH:mm"
    };
  }

  factory ActivityModel.fromMap(Map<String, dynamic> map) {
    return ActivityModel(
      id: map['id'] != null ? map['id'] as int : null,
      date: DateTime.parse(map['date'] as String),
      image: map['image'] != null ? base64Decode(map['image'] as String) : null,
      title: map['title'] as String,
      description: map['description'] as String?,
      time: map['time'] != null ? _parseTimeOfDay(map['time'] as String) : null,
    );
  }

  String toJson() => json.encode(toMap());

  factory ActivityModel.fromJson(Map<String, dynamic> source) => ActivityModel.fromMap(source);

  @override
  String toString() {
    return 'ActivityModel(id: $id, date: $date, image: $image, title: $title, description: $description, time: $time)';
  }

  static TimeOfDay _parseTimeOfDay(String timeString) {
    final parts = timeString.split(':');
    return TimeOfDay(hour: int.parse(parts[0]), minute: int.parse(parts[1]));
  }
}
