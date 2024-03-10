import 'package:flutter/material.dart';
import 'package:note/const.dart';

class CustomButon extends StatelessWidget {
  CustomButon({this.onTap, required this.text, this.isLoad = false});
  VoidCallback? onTap;
  String text;
  final bool isLoad;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        decoration: BoxDecoration(
          color: kPrimaryColor,
          borderRadius: BorderRadius.circular(8),
        ),
        width: MediaQuery.of(context).size.width,
        height: 60,
        child: Center(
          child: isLoad
              ? const SizedBox(
                  height: 25,
                  width: 20,
                  child: CircularProgressIndicator(
                    color: Colors.black,
                  ),
                )
              : Text(
                  text,
                  style: const TextStyle(
                      color: Colors.black,
                      fontSize: 22,
                      fontWeight: FontWeight.bold),
                ),
        ),
      ),
    );
  }
}
