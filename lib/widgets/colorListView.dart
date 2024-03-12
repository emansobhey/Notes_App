
import 'package:flutter/material.dart';
import 'package:note/widgets/Color_Item.dart';

class colorListView extends StatelessWidget {
  const colorListView({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 32 * 2,
      child: ListView.builder(
          itemCount: 10,
          scrollDirection: Axis.horizontal,
          itemBuilder: (context, index) {
            return const colorItem();
          }),
    );
  }
}
