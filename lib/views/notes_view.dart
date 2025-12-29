import 'package:flutter/material.dart';
import 'package:notes_app/widgets/add_new_note.dart';
import 'package:notes_app/widgets/notes_view_body.dart';

class NotesView extends StatelessWidget {
  const NotesView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(
        shape: const CircleBorder(),
        backgroundColor: Colors.indigo,
        onPressed: () {
          showModalBottomSheet(
            context: context,
            builder: (context) {
              return AddNewNote();
            },
          );
        },
        child: const Icon(Icons.add),
      ),
      body: const NotesViewBody(),
    );
  }
}
