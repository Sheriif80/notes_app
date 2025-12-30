import 'package:flutter/material.dart';
import 'package:notes_app/views/widgets/custom_button.dart';
import 'package:notes_app/views/widgets/custom_text_field.dart';

class AddNewNote extends StatelessWidget {
  const AddNewNote({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(
        bottom: MediaQuery.of(context).viewInsets.bottom,
        left: 16,
        right: 16,
        top: 16,
      ),
      child: const SingleChildScrollView(child: AddNoteForm()),
    );
  }
}

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
          CustomButton(
            onTap: () {
              if (_formkey.currentState!.validate()) {
                _formkey.currentState!.save();
              }
            },
          ),
          const SizedBox(height: 16),
        ],
      ),
    );
  }
}
