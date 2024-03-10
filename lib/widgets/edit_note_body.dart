import 'package:flutter/material.dart';
import 'package:note/widgets/CustomAppBar.dart';
import 'package:note/widgets/customer_textFiles.dart';

class EditeNoteBody extends StatelessWidget {
  const EditeNoteBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 24),
      child: Column(
        children: [
          const SizedBox(
            height: 50,
          ),
          CustomAppBar(
            text: 'Edit page',
            icon: Icons.check,
          ),
          const SizedBox(
            height: 50,
          ),
          CustomTextField(
            hintText: 'Title',
          ),
          const SizedBox(
            height: 16,
          ),
          CustomTextField(
            hintText: 'Content',
            MaxLines: 5,
          ),
        ],
      ),
    );
  }
}
