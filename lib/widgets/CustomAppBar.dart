import 'package:flutter/material.dart';
import 'package:note/widgets/costomSearch.dart';

class CustomAppBar extends StatelessWidget {
  CustomAppBar(
      {super.key, required this.text, required this.icon, this.onPressed});
  final String text;
  final void Function()? onPressed;

  final IconData icon;
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Padding(
          padding: const EdgeInsets.only(top: 15, left: 15),
          child: Text(
            text,
            style: const TextStyle(
                color: Colors.black,
                fontStyle: FontStyle.normal,
                fontWeight: FontWeight.bold,
                fontSize: 25),
          ),
        ),
        const Text(
          '            ',
          style: TextStyle(
              color: Colors.black,
              fontStyle: FontStyle.normal,
              fontWeight: FontWeight.bold),
        ),
        const Spacer(),
        CostomIcon(
          onPressed: onPressed,
          icon: icon,
        )
      ],
    );
  }
}
