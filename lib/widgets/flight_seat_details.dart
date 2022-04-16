import 'package:flutter/material.dart';

import '../constants.dart';

class FlightSeatsDetails extends StatelessWidget {
  const FlightSeatsDetails({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text(
          'CGK',
          style: kMediumTextStyle.copyWith(
            color: Colors.white,
            fontSize: 24,
            fontWeight: FontWeight.w300,
          ),
        ),
        Text(
          'Jakarta',
          style: kInputTextStyle.copyWith(
            color: Colors.white,
          ),
        ),
        const SizedBox(
          height: 36,
        ),
        Image.asset(
          'assets/images/aroplane.png',
          color: Colors.white,
        ),
        const SizedBox(
          height: 36,
        ),
        Text(
          'LCY',
          style: kMediumTextStyle.copyWith(
            color: Colors.white,
            fontSize: 24,
            fontWeight: FontWeight.w300,
          ),
        ),
        Text(
          'Jakarta',
          style: kInputTextStyle.copyWith(
            color: Colors.white,
          ),
        ),
        const SizedBox(
          height: 36,
        ),
        Text(
          'FLIGHT NO',
          style: kInputTextStyle.copyWith(
            fontWeight: FontWeight.w500,
            fontSize: 14,
            color: const Color(0xffB2C7C5),
          ),
        ),
        Text(
          'KB765',
          style: kInputTextStyle.copyWith(
            color: Colors.white,
            fontSize: 16,
          ),
        ),
        const SizedBox(
          height: 36,
        ),
        Text(
          '00',
          style: kInputTextStyle.copyWith(
            fontSize: 48,
            color: const Color(0xffB2C7C5),
          ),
        ),
        Text(
          'SEATS',
          style: kInputTextStyle.copyWith(
            fontWeight: FontWeight.w500,
            fontSize: 14,
            color: const Color(0xffB2C7C5),
          ),
        ),
      ],
    );
  }
}
