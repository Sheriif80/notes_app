import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:notes_app/views/edit_note_view.dart';

class NoteWidget extends StatelessWidget {
  const NoteWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) {
              return const EditNoteView();
            },
          ),
        );
      },
      child: Container(
        padding: const EdgeInsets.only(left: 16, top: 12, bottom: 12),
        decoration: BoxDecoration(
          color: Colors.amber,
          borderRadius: BorderRadius.circular(16),
        ),
        child: Column(
          crossAxisAlignment: .end,
          children: [
            ListTile(
              title: Text(
                'Flutter Tips',
                style: GoogleFonts.roboto(
                  fontSize: 24,
                  fontWeight: FontWeight.bold,
                  color: Colors.black,
                ),
              ),
              subtitle: Padding(
                padding: const EdgeInsets.only(top: 8),
                child: Text(
                  'Build beautiful apps with Flutter',
                  style: GoogleFonts.roboto(
                    fontSize: 16,
                    color: Colors.black54,
                  ),
                ),
              ),
              trailing: IconButton(
                onPressed: () {},
                icon: const Icon(Icons.delete, color: Colors.black, size: 28),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(right: 16),
              child: Text(
                'Dec 28, 2025',
                style: GoogleFonts.roboto(fontSize: 14, color: Colors.black87),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
