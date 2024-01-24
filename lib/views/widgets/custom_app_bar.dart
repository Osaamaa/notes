import 'package:flutter/material.dart';
import 'package:notes_app/core/styles.dart';

import 'custom_search.dart';

class CustomAppBar extends StatelessWidget {
  const CustomAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    return const Row(
      children: [
        SizedBox(
          height: 50,
        ),
        Text(
          'Notes',style:Styles.style28,

        ),
        Spacer(),
        CustomSearchIcon(),
      ],
    );
  }
}
