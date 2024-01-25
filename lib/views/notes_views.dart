import 'package:flutter/material.dart';
import 'package:notes_app/views/widgets/Notes_View_Body.dart';
import 'package:notes_app/views/widgets/add_note_bottom_sheet.dart';

class NotesView extends StatelessWidget {
  const NotesView({super.key});

  @override
  Widget build(BuildContext context) {
    return
       Scaffold(
         resizeToAvoidBottomInset: false,
        floatingActionButton: FloatingActionButton(
          onPressed: () {
            showModalBottomSheet
              (isScrollControlled: true,shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(16),
            ),context: context, builder: (context){
              
              return AddNoteBottomSheet();
            });
          },
          child: const Icon(Icons.add),
        ),
         body: const NotesViewBody(),

       );

  }
}

