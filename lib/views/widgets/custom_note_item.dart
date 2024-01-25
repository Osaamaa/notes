import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import '../models/note_model.dart';

class NoteItem extends StatelessWidget {
  const NoteItem({super.key, required this.note});
  final NoteModel note;
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.only(top: 24, bottom: 24, left: 16),
      decoration: BoxDecoration(
          color: const Color(0xffFFCC80),
          borderRadius: BorderRadius.circular(16)),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.end,
        children: [
          ListTile(
            title:  Text(
              note.title,
              style: TextStyle(color: Colors.black, fontSize: 26),
            ),
            subtitle: Padding(
              padding: const EdgeInsets.symmetric(vertical: 16),
              child: Text(
                note.subTitle,
                style: TextStyle(
                    color: Colors.black.withOpacity(.5), fontSize: 18),
              ),
            ),
            trailing: IconButton(
              icon: const Icon(
                FontAwesomeIcons.trash,
                color: Colors.black,
                size: 24,
              ),
              onPressed: () {
                print("hello");
              },
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(right: 24),
            child: Text(
              note.date,
              style:
              TextStyle(color: Colors.black.withOpacity(.5), fontSize: 16),
            ),
          ),
        ],
      ),
    );
  }
}
