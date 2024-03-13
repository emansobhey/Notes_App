import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:note/const.dart';
import 'package:note/cubits/cubit/notes_cubit.dart';
import 'package:note/models/note_model.dart';
import 'package:note/widgets/Color_Item.dart';
import 'package:note/widgets/CustomAppBar.dart';
import 'package:note/widgets/colorListView.dart';
import 'package:note/widgets/customer_textFiles.dart';

class EditeNoteBody extends StatefulWidget {
  const EditeNoteBody({super.key, required this.note});
  final NoteModel note;

  @override
  State<EditeNoteBody> createState() => _EditeNoteBodyState();
}

class _EditeNoteBodyState extends State<EditeNoteBody> {
  String? title, content;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 24),
      child: Column(
        children: [
          const SizedBox(
            height: 50,
          ),
          CustomAppBar(
            onPressed: () {
              widget.note.title = title ?? widget.note.title;
              widget.note.subtitle = content ?? widget.note.subtitle;
              widget.note.save();
              BlocProvider.of<NotesCubit>(context).fetchAllNotes();
              Navigator.pop(context);
            },
            text: 'Edit page',
            icon: Icons.check,
          ),
          const SizedBox(
            height: 50,
          ),
          CustomTextField(
            onChanged: (value) {
              title = value;
            },
            hintText: widget.note.title,
          ),
          const SizedBox(
            height: 16,
          ),
          CustomTextField(
            onChanged: (value) {
              content = value;
            },
            hintText: widget.note.subtitle,
            MaxLines: 5,
          ),
          const SizedBox(
            height: 35,
          ),
          EditeNoteColer(
            note: widget.note,
          ),
        ],
      ),
    );
  }
}

class EditeNoteColer extends StatefulWidget {
  const EditeNoteColer({super.key, required this.note});
  final NoteModel note;
  @override
  State<EditeNoteColer> createState() => _EditeNoteColerState();
}

class _EditeNoteColerState extends State<EditeNoteColer> {
  late int currentindex;
  @override
  void initState() {
    currentindex = kcolors.indexOf(Color(widget.note.color));
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 32 * 2,
      child: ListView.builder(
          itemCount: kcolors.length,
          scrollDirection: Axis.horizontal,
          itemBuilder: (context, index) {
            return Padding(
              padding: const EdgeInsets.symmetric(horizontal: 5),
              child: GestureDetector(
                onTap: () {
                  currentindex = index;
                  widget.note.color = kcolors[index].value;
                  setState(() {});
                },
                child: colorItem(
                  color: kcolors[index],
                  isActive: currentindex == index,
                ),
              ),
            );
          }),
    );
  }
}
