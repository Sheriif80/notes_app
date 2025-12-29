import 'package:flutter/material.dart';
import 'package:notes_app/widgets/custom_app_bar.dart';
import 'package:notes_app/widgets/custom_text_field.dart';

class EditNoteViewBody extends StatelessWidget {
  const EditNoteViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding: EdgeInsets.all(16),
      child: Column(
        children: [
          SizedBox(height: 40),
          CustomAppBar(hint: 'Edit Note', icon: Icons.edit),
          CustomTextField(hint: 'Title'),
          CustomTextField(hint: 'Content', maxLines: 5),
        ],
      ),
    );
  }
}
