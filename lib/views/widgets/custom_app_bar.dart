import 'package:flutter/material.dart';
import 'package:notes_app/core/styles.dart';

import 'custom_search.dart';

class CustomAppBar extends StatelessWidget {
  const CustomAppBar({super.key, required this.title, required this.icon});

  final String title;
  final IconData icon;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        const SizedBox(
          height: 60,
        ),
        Text(
          title,
          style: Styles.style28,
        ),
        const Spacer(),
        CustomIcon(
          icon: icon,
        ),
      ],
    );
  }
}
