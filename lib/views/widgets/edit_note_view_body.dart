import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:notes_app/cubits/view_notes_cubit/view_notes_cubit.dart';
import 'package:notes_app/models/note_model.dart';
import 'package:notes_app/views/widgets/custom_app_bar.dart';
import 'package:notes_app/views/widgets/custom_button.dart';
import 'package:notes_app/views/widgets/custom_text_field.dart';
import 'package:notes_app/views/widgets/edit_note_colors_list_view.dart';

class EditNoteViewBody extends StatefulWidget {
  const EditNoteViewBody({super.key, required this.noteModel});
  final NoteModel noteModel;

  @override
  State<EditNoteViewBody> createState() => _EditNoteViewBodyState();
}

class _EditNoteViewBodyState extends State<EditNoteViewBody> {
  String? title;
  String? content;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(16),
      child: Column(
        children: [
          const SizedBox(height: 40),
          const CustomAppBar(hint: 'Edit Note', icon: Icons.edit_note),
          CustomTextField(
            onChanged: (data) {
              title = data;
            },
            hint: widget.noteModel.title,
          ),
          CustomTextField(
            onChanged: (data) {
              content = data;
            },
            hint: widget.noteModel.content,
            maxLines: 5,
          ),
          const SizedBox(height: 40),
          EditNoteColorsListView(noteModel: widget.noteModel),
          CustomButton(
            onTap: () {
              widget.noteModel.title = title ?? widget.noteModel.title;
              widget.noteModel.content = content ?? widget.noteModel.content;
              widget.noteModel.save();
              BlocProvider.of<ViewNotesCubit>(context).loadNotes();
              Navigator.pop(context);

              // of I can make IF condition like this :
              /*

              if(title != null)
              {widget.noteModel.title = title!; }
              if(content != null)
              {widget.noteModel.content = content!;  }
               
              */
            },
            hint: 'Edit Note',
          ),
        ],
      ),
    );
  }
}
