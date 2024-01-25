import 'package:flutter/material.dart';
import 'package:notes_app/views/widgets/custom_note_item.dart';

import 'custom_app_bar.dart';
import 'notes_list_view.dart';

class NotesViewBody extends StatelessWidget {
  const NotesViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return   const Padding(
      padding: EdgeInsets.symmetric(horizontal: 16),
      child: Column(
        children: [
          SizedBox(height: 40,),
          CustomAppBar(),
          Expanded(child: Padding(
            padding: EdgeInsets.symmetric(vertical: 16),
            child: NotesListView(),
          )),
        ],
      ),
    );
  }
}

