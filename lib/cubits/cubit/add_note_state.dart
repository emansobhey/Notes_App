part of 'add_note_cubit.dart';

@immutable
sealed class AddNoteState {}

class AddNoteInitial extends AddNoteState {}

class AddNoteLoading extends AddNoteState {}

class AddNotesuccess extends AddNoteState {}

class AddNoteFailure extends AddNoteState {
  final String errMassage;

  AddNoteFailure(this.errMassage);
}
