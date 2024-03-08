import 'package:flutter/material.dart';
import 'package:note/widgets/CustomAppBar.dart';
import 'package:note/widgets/Notes_list_view.dart';
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
