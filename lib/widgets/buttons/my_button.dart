import 'package:flutter/material.dart';

import '../../constants.dart';

GestureDetector buildMyButton(
  BuildContext context,
  String title,
  String routeName,
) {
  return GestureDetector(
    onTap: () {
      Navigator.of(context).pushNamed(routeName);
    },
    child: Container(
      height: 60,
      width: 300,
      decoration: const BoxDecoration(
          color: kButtonColor,
          borderRadius: BorderRadius.all(
            Radius.circular(20.0),
          ),
          boxShadow: [
            BoxShadow(
              color: Color(0xffFF8A63),
              spreadRadius: 1,
              // blurRadius: 10,
            )
          ]),
      child: Center(
        child: Text(
          title,
          style: kMediumTextStyle,
        ),
      ),
    ),
  );
}
