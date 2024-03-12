import 'package:bloc/bloc.dart';
import 'package:flutter/material.dart';
import 'package:hive_flutter/adapters.dart';
import 'package:meta/meta.dart';
import 'package:note/const.dart';
import 'package:note/models/note_model.dart';

part 'add_note_state.dart';

class AddNoteCubit extends Cubit<AddNoteState> {
  AddNoteCubit() : super(AddNoteInitial());
  Color color = const Color(0xff6196A6);
  addNote(NoteModel note) async {
    emit(AddNoteLoading());
    try {
      note.color = color.value;
      var noteBox = Hive.box<NoteModel>(kNoteBox);
      await noteBox.add(note);
      emit(AddNotesuccess());
    } catch (e) {
      emit(AddNoteFailure(e.toString()));
    }
  }
}
