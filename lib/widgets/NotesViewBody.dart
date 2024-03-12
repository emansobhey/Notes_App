import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:note/cubits/cubit/notes_cubit.dart';
import 'package:note/models/note_model.dart';
import 'package:note/widgets/CustomAppBar.dart';
import 'package:note/widgets/Notes_list_view.dart';
import 'package:note/widgets/ccostomNoteItem.dart';

class NotesViewBody extends StatefulWidget {
  const NotesViewBody({super.key});

  @override
  State<NotesViewBody> createState() => _NotesViewBodyState();
}

class _NotesViewBodyState extends State<NotesViewBody> {
  @override
  void initState() {
    BlocProvider.of<NotesCubit>(context).fetchAllNotes();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(
          height: 50,
        ),
        CustomAppBar(
          text: 'Note',
          icon: Icons.search,
        ),
        Expanded(child: NotesListView())
      ],
    );
  }
}
