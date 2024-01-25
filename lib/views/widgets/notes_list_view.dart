import 'package:flutter/material.dart';
import 'package:notes_app/views/edit_note_view.dart';

import '../../core/componats.dart';
import 'custom_note_item.dart';

class NotesListView extends StatelessWidget {
  const NotesListView({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView.builder(padding: EdgeInsets.zero,itemBuilder: (context,index){

      return  Padding(
        padding: const EdgeInsets.symmetric(vertical: 4),
        child: GestureDetector(onTap: (){
          navigateTo(context,const EditNoteView());
        },child: const NoteItem()),
      );
    });
  }
}
