import 'package:flutter/material.dart';
import 'package:notes_app/views/widgets/Notes_View_Body.dart';

class NotesView extends StatelessWidget {
  const NotesView({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Scaffold(
        body: NotesViewBody(),
      ),
    );
  }
}
