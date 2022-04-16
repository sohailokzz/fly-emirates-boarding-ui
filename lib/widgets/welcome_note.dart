import 'package:flutter/material.dart';

import '../constants.dart';

class WelcomeNote extends StatelessWidget {
  const WelcomeNote({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Image.asset('assets/images/emariteslogo.png'),
        const SizedBox(
          height: 10.0,
        ),
        const Text(
          'Welcome to the Emirates Application,\n'
          'find the various flights you need!',
          textAlign: TextAlign.center,
          style: kNormalTextStyle,
          maxLines: 2,
        ),
      ],
    );
  }
}
