// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'dart:convert';
import 'dart:typed_data';

class ActivityModel {
  final int? id;
  final DateTime date;
  Uint8List? image;
  String title;
  String? description;
  DateTime? time;
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
    DateTime? time,
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
      'date': date.millisecondsSinceEpoch,
      'image': image,
      'title': title,
      'description': description,
      'time': time?.millisecondsSinceEpoch,
    };
  }

  factory ActivityModel.fromMap(Map<String, dynamic> map) {
    return ActivityModel(
      id: map['id'] != null ? map['id'] as int : null,
      date: DateTime.fromMillisecondsSinceEpoch(map['date'] as int),
      image: map['image'] != null ? Base64Decoder().convert(map['image']) : null,
      title: map['title'] as String,
      description: map['description'] != null ? map['description'] as String : null,
      time: map['time'] != null ? DateTime.fromMillisecondsSinceEpoch(map['time'] as int) : null,
    );
  }

  String toJson() => json.encode(toMap());

  factory ActivityModel.fromJson(Map<String, dynamic> source) => ActivityModel.fromMap(source);

  @override
  String toString() {
    return 'ActivityModel(id: $id, date: $date, image: $image, title: $title, description: $description, time: $time)';
  }
}
