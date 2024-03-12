import 'dart:ffi';

import 'package:flutter/material.dart';
import 'package:note/const.dart';

class CustomTextField extends StatelessWidget {
  CustomTextField(
      {required this.hintText,
      this.inputType,
      this.obscureText = false,
      this.MaxLines = 1,
      this.onSaved, this.onChanged});
  String hintText;
  final int MaxLines;
  final void Function(String?)? onSaved;
  TextInputType? inputType;
  bool? obscureText;
  final void Function(String)? onChanged;
  @override
  Widget build(BuildContext context) {
    return TextFormField(
      onSaved: onSaved,
      validator: (Value) {
        if (Value?.isEmpty ?? true) {
          return 'Filed is Reguire';
        } else {
          return null;
        }
      },
      onChanged:onChanged ,
      maxLines: MaxLines,
      cursorColor: kPrimaryColor,
      obscureText: obscureText!,
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
