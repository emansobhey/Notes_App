import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:modal_progress_hud_nsn/modal_progress_hud_nsn.dart';
import 'package:note/cubits/cubit/add_note_cubit.dart';
import 'package:note/widgets/Add_note_form.dart';
import 'package:note/widgets/customer_textFiles.dart';

class AddNoteBottomSheet extends StatelessWidget {
  const AddNoteBottomSheet({super.key});
  @override
  Widget build(BuildContext context) {
    return BlocProvider(
        create: (context) => AddNoteCubit(),
        child: BlocListener<AddNoteCubit, AddNoteState>(
            listener: (context, state) {
              if (state is AddNoteFailure) {
                print('Failure ${state.errMassage}');
              }
              if (state is AddNotesuccess) {
                Navigator.pop(context);
              }
            },
            child: Padding(
              padding: EdgeInsets.symmetric(horizontal: 16),
              child: SingleChildScrollView(child: const AddNoteForm()),
            )));
  }
}
