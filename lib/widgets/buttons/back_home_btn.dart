import 'package:flutter/material.dart';
import '../../constants.dart';

class BackHomeBtn extends StatelessWidget {
  final String title;

  const BackHomeBtn({
    Key? key,
    required this.title,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.of(context).pushNamed('/');
      },
      child: Container(
        height: 60,
        width: 300,
        decoration: BoxDecoration(
          color: kBackgroundColor,
          border: Border.all(
            color: const Color(0xffFF8A63),
          ),
          borderRadius: const BorderRadius.all(
            Radius.circular(20.0),
          ),
        ),
        child: Center(
          child: Text(
            title,
            style: kMediumTextStyle,
          ),
        ),
      ),
    );
  }
}
