import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:notes_app/cubits/add_note_cubit/add_note_cubit.dart';
import 'package:notes_app/models/note_model.dart';
import 'package:notes_app/views/widgets/custom_button.dart';
import 'package:notes_app/views/widgets/custom_text_field.dart';

class AddNoteForm extends StatefulWidget {
  const AddNoteForm({super.key});

  @override
  State<AddNoteForm> createState() => _AddNoteFormState();
}

class _AddNoteFormState extends State<AddNoteForm> {
  final GlobalKey<FormState> _formkey = GlobalKey();
  final AutovalidateMode autovalidateMode = AutovalidateMode.onUserInteraction;
  String? title;
  String? content;
  @override
  Widget build(BuildContext context) {
    return Form(
      key: _formkey,
      autovalidateMode: autovalidateMode,
      child: Column(
        children: [
          CustomTextField(
            hint: 'Title',
            onsaved: (data) {
              title = data;
            },
          ),
          CustomTextField(
            hint: 'Content',
            maxLines: 5,
            onsaved: (data) {
              content = data;
            },
          ),
          BlocBuilder<AddNoteCubit, AddNoteState>(
            builder: (context, state) {
              return CustomButton(
                isLoading: state is AddNoteLoading ? true : false,
                onTap: () {
                  addingNoteFunction(context);
                },
                hint: 'Add Note',
              );
            },
          ),
          const SizedBox(height: 16),
        ],
      ),
    );
  }

  void addingNoteFunction(BuildContext context) {
    if (_formkey.currentState!.validate()) {
      _formkey.currentState!.save();
      final NoteModel noteModel = NoteModel(
        title: title!,
        content: content!,
        createdAt: DateTime.now().toString(),
        color: Colors.lightBlue.value,
      );
      BlocProvider.of<AddNoteCubit>(context).addNote(noteModel);
    }
  }
}
