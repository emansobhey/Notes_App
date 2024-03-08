import 'package:flutter/material.dart';
import 'package:note/widgets/costomSearch.dart';

class CustomAppBar extends StatelessWidget {
  const CustomAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Container(
          child: const Padding(
            padding: EdgeInsets.only(top: 15, left: 15),
            child: Text(
              'Notes ',
              style: TextStyle(color: Colors.white, fontSize: 25),
            ),
          ),
        ),
        const Spacer(),
        const CostomSearchIcon()
      ],
    );
  }
}
