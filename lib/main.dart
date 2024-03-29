import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:hive_flutter/adapters.dart';
import 'package:note/const.dart';
import 'package:note/cubits/cubit/add_note_cubit.dart';
import 'package:note/cubits/cubit/notes_cubit.dart';
import 'package:note/models/note_model.dart';
import 'package:note/simple_bloc.dart';
import 'package:note/views/Notes_view.dart';
import 'package:note/views/welome.dart';

void main() async {
  await Hive.initFlutter();
  Bloc.observer = SimpleBlocObserver();
  Hive.registerAdapter(NoteModelAdapter());
  await Hive.openBox<NoteModel>(kNoteBox);
  runApp(const NoteApp());
}

class NoteApp extends StatelessWidget {
  const NoteApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => NotesCubit(),
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        theme: ThemeData(brightness: Brightness.light, fontFamily: 'Poppins'),
        home: WelcomePage(),
      ),
    );
  }
}
