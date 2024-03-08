import 'package:flutter/material.dart';
import 'package:note/const.dart';

class CustomTextField extends StatelessWidget {
  CustomTextField(
      {required this.hintText,
      this.inputType,
      this.onChanged,
      this.obscureText = false,
      this.MaxLines = 1});
  Function(String)? onChanged;
  String hintText;
  final int MaxLines;
  TextInputType? inputType;
  bool? obscureText;
  @override
  Widget build(BuildContext context) {
    return TextField(
      maxLines: MaxLines,
      cursorColor: kPrimaryColor,
      obscureText: obscureText!,
      onChanged: onChanged,
      keyboardType: inputType,
      decoration: InputDecoration(
        hintText: hintText,
        hintStyle: const TextStyle(color: Colors.blueGrey),
        focusedBorder: const OutlineInputBorder(
            borderSide: BorderSide(color: kPrimaryColor)),
        enabledBorder: OutlineInputBorder(
          borderSide: const BorderSide(color: Colors.white),
          borderRadius: BorderRadius.circular(8),
        ),
        border: OutlineInputBorder(
          borderSide: const BorderSide(color: Colors.white),
          borderRadius: BorderRadius.circular(8),
        ),
      ),
    );
  }
}
