import 'package:flutter/material.dart';

class CostomSearchIcon extends StatelessWidget {
  const CostomSearchIcon({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 50,
      width: 50,
      decoration: BoxDecoration(
          color: Colors.white.withOpacity(0.05),
          borderRadius: BorderRadius.circular(16)),
      child: const Center(
          child: Icon(
        Icons.search,
        size: 25,
      )),
    );
  }
}
