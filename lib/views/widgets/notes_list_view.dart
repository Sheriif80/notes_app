import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:notes_app/cubits/view_notes_cubit/view_notes_cubit.dart';
import 'package:notes_app/views/widgets/note_widget.dart';

class NotesListView extends StatelessWidget {
  const NotesListView({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<ViewNotesCubit, ViewNotesState>(
      builder: (context, state) {
        return Padding(
          padding: const EdgeInsets.symmetric(vertical: 12),
          child: ListView.builder(
            padding: EdgeInsets.zero,
            itemCount: state is ViewNotesSuccess ? state.notes.length : 0,
            itemBuilder: (context, index) {
              return const Padding(
                padding: EdgeInsets.symmetric(vertical: 10),
                child: NoteWidget(),
              );
            },
          ),
        );
      },
    );
  }
}
