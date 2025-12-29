import 'package:flutter/material.dart';
import 'package:notes_app/widgets/custom_button.dart';
import 'package:notes_app/widgets/custom_text_field.dart';

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
      child: const SingleChildScrollView(
        child: Column(
          children: [
            CustomTextField(hint: 'Title'),
            CustomTextField(hint: 'Content', maxLines: 5),
            CustomButton(),
            SizedBox(height: 16),
          ],
        ),
      ),
    );
  }
}
