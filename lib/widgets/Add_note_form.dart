import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:intl/intl.dart';
import 'package:note/cubits/cubit/add_note_cubit.dart';
import 'package:note/models/note_model.dart';
import 'package:note/widgets/customer_button.dart';
import 'package:note/widgets/customer_textFiles.dart';

class AddNoteForm extends StatefulWidget {
  const AddNoteForm({Key? key}) : super(key: key);

  @override
  State<AddNoteForm> createState() => _AddNoteFormState();
}

class _AddNoteFormState extends State<AddNoteForm> {
  AutovalidateMode autovalidateMode = AutovalidateMode.disabled;
  final GlobalKey<FormState> formKey = GlobalKey();
  String? title, subtitle;
  late String currentTime;

  @override
  void initState() {
    super.initState();
    currentTime = DateFormat('HH:mm').format(DateTime.now());
  }

  @override
  Widget build(BuildContext context) {
    return Form(
      key: formKey,
      autovalidateMode: autovalidateMode,
      child: Column(
        children: [
          const SizedBox(
            height: 32,
          ),
          CustomTextField(
            onSaved: (value) {
              title = value;
            },
            hintText: 'Title',
          ),
          const SizedBox(
            height: 16,
          ),
          CustomTextField(
            onSaved: (value) {
              subtitle = value;
            },
            hintText: 'Content',
            MaxLines: 5,
          ),
          SizedBox(
            height: 25,
          ),
          
          BlocBuilder<AddNoteCubit, AddNoteState>(
            builder: (context, state) {
              return CustomButon(
                isLoad: state is AddNoteLoading ? true : false,
                onTap: () {
                  if (formKey.currentState!.validate()) {
                    formKey.currentState!.save();
                    var noteModel = NoteModel(
                      title: title!,
                      subtitle: subtitle!,
                      date: currentTime.toString(), // Save the current time
                      color: Colors.blue.value,
                    );
                    BlocProvider.of<AddNoteCubit>(context).addNote(noteModel);
                  } else {
                    autovalidateMode = AutovalidateMode.always;
                    setState(() {});
                  }
                },
                text: 'Add',
              );
            },
          ),
          SizedBox(
            height: 25,
          ),
        ],
      ),
    );
  }
}
