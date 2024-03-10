import 'package:flutter/material.dart';
import 'package:note/widgets/costomSearch.dart';

class CustomAppBar extends StatelessWidget {
  CustomAppBar({super.key, required this.text, required this.icon});
  final String text;
  final IconData icon;
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Container(
          child: Padding(
            padding: EdgeInsets.only(top: 15, left: 15),
            child: Text(
              text,
              style: TextStyle(color: Colors.white, fontSize: 25),
            ),
          ),
        ),
        Text('            '),
        const Spacer(),
        CostomIcon(
          icon: icon,
        )
      ],
    );
  }
}
