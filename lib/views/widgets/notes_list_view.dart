import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:notes_app/cubits/notes_cubit/notes_cubit.dart';
import 'package:notes_app/views/edit_note_view.dart';
import 'package:notes_app/views/models/note_model.dart';

import '../../core/componats.dart';
import 'custom_note_item.dart';

class NotesListView extends StatelessWidget {
  const NotesListView({super.key});

  @override
  Widget build(BuildContext context) {
    List<NoteModel>notes=BlocProvider.of<NotesCubit>(context).notes!;
    return BlocBuilder<NotesCubit, NotesState>(
      builder: (context, state) {
        return ListView.builder(
            itemCount: notes.length,
            padding: EdgeInsets.zero,
            itemBuilder: (context, index) {
              return Padding(
                padding: const EdgeInsets.symmetric(
                  vertical: 4,
                ),
                child: GestureDetector(
                    onTap: () {
                      navigateTo(context, const EditNoteView());
                    },
                    child: const NoteItem()),
              );
            });
      },
    );
  }
}
