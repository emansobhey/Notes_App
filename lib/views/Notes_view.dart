import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:note/cubits/cubit/notes_cubit.dart';
import 'package:note/widgets/AddNoteBottomSheet.dart';
import 'package:note/widgets/NotesViewBody.dart';

class NotesViews extends StatelessWidget {
  const NotesViews({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(
        backgroundColor: Color(0xffA0C3D2),
        onPressed: () {
          showModalBottomSheet(
              isScrollControlled: true,
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(25)),
              context: context,
              builder: (context) {
                return const AddNoteBottomSheet();
              });
        },
        child: const Icon(Icons.add),
      ),
      body: const NotesViewBody(),
    );
  }
}
