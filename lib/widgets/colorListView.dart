import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:note/cubits/cubit/add_note_cubit.dart';
import 'package:note/widgets/Color_Item.dart';

class ColorListView extends StatefulWidget {
  const ColorListView({super.key});

  @override
  State<ColorListView> createState() => _ColorListViewState();
}

class _ColorListViewState extends State<ColorListView> {
  int currentindex = 0;
  List<Color> colors = const [
    Color(0xff6196A6),
    Color(0xff102C57),
    Color(0xff5F5D9C),
    Color(0xff8E7AB5),
    Color(0xffB784B7),
    Color(0xffB2B377),
    Color(0xffD2D180),
    Color(0xffE5E483),
    Color(0xffF1F5A8),
    Color(0xffD37676),
    Color(0xffB0C5A4),
    Color(0xffEBC49F),
    Color(0xffF1EF99),
    Color(0xffA4CE95),
    Color(0xffF4EDCC),
    Color(0xffD7E4C0),
    Color(0xffC6DCBA),
    Color(0xffBBC3A4),
    Color(0xffB3A398),
    Color(0xff3E3232),
    Color(0xff503C3C),
    Color(0xff7E6363),
    Color(0xffA87C7C),
    Color(0xffF8F0E5),
    Color(0xffEADBC8),
    Color(0xffDAC0A3),
    Color(0xffEEA5A6),
  ];

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 32 * 2,
      child: ListView.builder(
          itemCount: colors.length,
          scrollDirection: Axis.horizontal,
          itemBuilder: (context, index) {
            return Padding(
              padding: const EdgeInsets.symmetric(horizontal: 5),
              child: GestureDetector(
                onTap: () {
                  currentindex = index;
                  BlocProvider.of<AddNoteCubit>(context).color = colors[index];
                  setState(() {});
                },
                child: colorItem(
                  color: colors[index],
                  isActive: currentindex == index,
                ),
              ),
            );
          }),
    );
  }
}
