import 'package:flutter/material.dart';

import '../constants.dart';

class MyFlights extends StatelessWidget {
  const MyFlights({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(16.0),
      child: Container(
        height: 200,
        width: MediaQuery.of(context).size.width,
        decoration: const BoxDecoration(
          color: Color(0xFFFFFFFF),
          borderRadius: BorderRadius.all(
            Radius.circular(32),
          ),
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Padding(
              padding: const EdgeInsets.only(
                left: 16.0,
                right: 16,
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    'CGK',
                    style: kMediumTextStyle.copyWith(
                      color: Colors.black,
                      fontSize: 24,
                      fontWeight: FontWeight.w300,
                    ),
                  ),
                  Text(
                    'NYC',
                    style: kMediumTextStyle.copyWith(
                      color: Colors.black,
                      fontSize: 24,
                      fontWeight: FontWeight.w300,
                    ),
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(
                left: 16,
                right: 16,
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    'Jakarta',
                    style: kInputTextStyle.copyWith(
                      color: Colors.black,
                    ),
                  ),
                  Text(
                    'New York City',
                    style: kInputTextStyle.copyWith(
                      color: Colors.black,
                    ),
                  ),
                ],
              ),
            ),
            Image.asset(
              'assets/images/aroplane.png',
            ),
            Padding(
              padding: const EdgeInsets.only(
                left: 16,
                right: 16,
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    'Date',
                    style: kInputTextStyle.copyWith(
                      color: const Color(0xffB2C7C5),
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                  Text(
                    'FLIGHT NO',
                    style: kInputTextStyle.copyWith(
                      fontWeight: FontWeight.w500,
                      color: const Color(0xffB2C7C5),
                    ),
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(
                left: 16,
                right: 16,
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    'Jan 01, 8.35 PM',
                    style: kInputTextStyle.copyWith(
                      color: Colors.black,
                    ),
                  ),
                  Text(
                    'KB765',
                    style: kInputTextStyle.copyWith(
                      color: Colors.black,
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
