import 'package:bloc/bloc.dart';
import 'package:hive_ce/hive.dart';
import 'package:meta/meta.dart';
import 'package:notes_app/constants.dart';
import 'package:notes_app/models/note_model.dart';

part 'view_notes_state.dart';

class ViewNotesCubit extends Cubit<ViewNotesState> {
  ViewNotesCubit() : super(ViewNotesInitial());

  loadNotes() async {
    var notesBox = Hive.box<NoteModel>(kNotesBox);

    List<NoteModel> notes = notesBox.values.toList();

    emit(ViewNotesSuccess(notes: notes));
  }
}
