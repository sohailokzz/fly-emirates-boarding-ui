import 'package:flutter/material.dart';

import '../constants.dart';

class AeroplaneShape extends StatelessWidget {
  const AeroplaneShape({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 636,
      width: 203,
      decoration: BoxDecoration(
        color: const Color(0xffF8F6E7).withOpacity(0.3),
        shape: BoxShape.rectangle,
        borderRadius: const BorderRadius.vertical(
          top: Radius.elliptical(100, 280),
        ),
      ),
      child: Padding(
        padding: const EdgeInsets.only(top: 56.0),
        child: Column(
          children: [
            Image.asset(
              'assets/images/emariteslogo.png',
              scale: 2.5,
            ),
            const SizedBox(
              height: 32,
            ),
            const Text(
              'DES 19, 8.35 AM',
              style: kMediumTextStyle,
            ),
            const SizedBox(
              height: 48,
            ),
            const Text(
              'Economy Class',
              style: kMediumTextStyle,
            ),
            const SizedBox(
              height: 48,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Row(
                  children: [
                    Column(
                      children: [
                        _buildSeats(),
                        _buildSeats(),
                        _buildSeats(),
                        _buildSeats(),
                        _buildSeats(),
                        _buildSeats(),
                        _buildSeats()
                      ],
                    ),
                    Column(
                      children: [
                        _buildSeats(),
                        _buildSeats(),
                        _buildSeats(),
                        _buildSeats(),
                        _buildSeats(),
                        _buildSeats(),
                        _buildSeats()
                      ],
                    ),
                  ],
                ),
                Row(
                  children: [
                    Column(
                      children: [
                        _buildSeats(),
                        _buildSeats(),
                        _buildSeats(),
                        _buildSeats(),
                        _buildSeats(),
                        _buildSeats(),
                        _buildSeats()
                      ],
                    ),
                    Column(
                      children: [
                        _buildSeats(),
                        _buildSeats(),
                        _buildSeats(),
                        _buildSeats(),
                        _buildSeats(),
                        _buildSeats(),
                        _buildSeats()
                      ],
                    ),
                  ],
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }

  Padding _buildSeats() {
    return Padding(
      padding: const EdgeInsets.all(4.0),
      child: Container(
        width: 28,
        height: 40,
        decoration: BoxDecoration(
          borderRadius: const BorderRadius.all(
            Radius.circular(4),
          ),
          border: Border.all(
            color: const Color(0xffF8F6E7),
          ),
        ),
      ),
    );
  }
}
