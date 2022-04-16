import 'package:flutter/material.dart';

import '../../constants.dart';

TextFormField buildTextFieldCheckOut(
  String? label,
  String hintText,
) {
  return TextFormField(
    cursorColor: Colors.black,
    style: kInputTextStyle.copyWith(
      color: Colors.black,
      fontSize: 18,
    ),
    decoration: InputDecoration(
      focusedBorder: const UnderlineInputBorder(
        borderSide: BorderSide(
          color: Colors.black,
        ),
      ),
      label: Text(
        label ?? '',
      ),
      floatingLabelBehavior: FloatingLabelBehavior.always,
      hintText: hintText,
      labelStyle: kNormalTextStyle.copyWith(
        color: const Color(0xffB2C7C5),
        fontSize: 18,
      ),
    ),
  );
}
