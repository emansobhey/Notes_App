import 'package:flutter/material.dart';
import 'package:note/widgets/costomSearch.dart';

class CustomAppBar extends StatelessWidget {
  const CustomAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Text(
          '  Notes ',
          style: TextStyle(color: Colors.white, fontSize: 25),
        ),
        Spacer(),
        CostomSearchIcon()
      ],
    );
  }
}
