import 'package:flutter/material.dart';

import '../constants.dart';

class TopHeader extends StatelessWidget {
  final String title;
  final Color textColor;
  final Color iconColor;
  const TopHeader({
    Key? key,
    required this.title,
    required this.textColor,
    required this.iconColor,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.fromLTRB(24, 65, 0, 0),
      child: Row(
        children: [
          IconButton(
            onPressed: () {},
            icon: Icon(
              Icons.arrow_back,
              color: iconColor,
              size: 36,
            ),
          ),
          const SizedBox(
            width: 40,
          ),
          Text(
            title,
            style: kMediumTextStyle.copyWith(
              fontSize: 24,
              fontWeight: FontWeight.w500,
              color: textColor,
            ),
          ),
        ],
      ),
    );
  }
}
