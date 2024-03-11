part of 'notes_cubit.dart';

@immutable
sealed class NotesState {}

final class NotesInitial extends NotesState {}

final class NotesLoad extends NotesState {}

final class NotesSuccess extends NotesState {
  final List<NoteModel>note;

  NotesSuccess(this.note);
}

final class NotesFailure extends NotesState {
  final String errMassage;

  NotesFailure(this.errMassage);
}
