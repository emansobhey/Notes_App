import 'package:flutter/material.dart';
import 'package:note/widgets/customer_button.dart';
import 'package:note/widgets/customer_textFiles.dart';

class AddNoteBottomSheet extends StatelessWidget {
  const AddNoteBottomSheet({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16),
      child: SingleChildScrollView(
        child: Column(
          children: [
            const SizedBox(
              height: 32,
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
            SizedBox(
              height: 25,
            ),
            CustomButon(
              text: 'Add',
            ),
            SizedBox(
              height: 25,
            ),
          ],
        ),
      ),
    );
  }
}
