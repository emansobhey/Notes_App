import 'package:flutter/material.dart';
import 'package:note/widgets/CustomAppBar.dart';
import 'package:note/widgets/ccostomNoteItem.dart';

class NotesViewBody extends StatelessWidget {
  const NotesViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(
          height: 50,
        ),
        CustomAppBar(),
        Expanded(child: NotesListView())
      ],
    );
  }
}

class NotesListView extends StatelessWidget {
  const NotesListView({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView.builder(itemBuilder: (context, index) {
      return Padding(
        padding: const EdgeInsets.symmetric(vertical: 8, horizontal: 15),
        child: const NoteItem(),
      );
    });
  }
}
