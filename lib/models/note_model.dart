import 'package:hive/hive.dart';

class NoteModel {
  final String title;

  final String content;

  final String createdAt;

  final int color;

  const NoteModel({
    required this.title,
    required this.content,
    required this.createdAt,
    required this.color,
  });
}
