import 'package:hive/hive.dart';
import 'note_model.dart';

class NoteModelAdapter extends TypeAdapter<NoteModel> {
  @override
  final int typeId = 0;

  @override
  NoteModel read(BinaryReader reader) {
    final title = reader.readString();
    final content = reader.readString();
    final createdAt = reader.readString();
    final color = reader.readInt();

    return NoteModel(
      title: title,
      content: content,
      createdAt: createdAt,
      color: color,
    );
  }

  @override
  void write(BinaryWriter writer, NoteModel obj) {
    writer
      ..writeString(obj.title)
      ..writeString(obj.content)
      ..writeString(obj.createdAt)
      ..writeInt(obj.color);
  }
}
