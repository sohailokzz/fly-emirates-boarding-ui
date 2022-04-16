import 'package:flutter/material.dart';
import 'package:fly_emirates/constants.dart';
import 'package:fly_emirates/widgets/buttons/my_button.dart';
import '../widgets/textfields/my_textfield.dart';

class FlightBooking extends StatefulWidget {
  const FlightBooking({Key? key}) : super(key: key);

  @override
  State<FlightBooking> createState() => _FlightBookingState();
}

class _FlightBookingState extends State<FlightBooking> {
  Color _color = Colors.grey;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kBackgroundColor,
      body: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.only(top: 32.0),
              child: Stack(
                children: [
                  SizedBox(
                    height: 270,
                    width: MediaQuery.of(context).size.width,
                    child: Image.asset('assets/images/earthimage.png'),
                  ),
                  Positioned(
                    left: 140,
                    child: Image.asset('assets/images/onwayimage.png'),
                  ),
                  Positioned(
                    left: 40,
                    right: 00,
                    top: 70,
                    bottom: 0,
                    child: Text(
                      'Book your\nFlight',
                      style: kInputTextStyle.copyWith(
                        fontSize: 32,
                      ),
                    ),
                  ),
                  Positioned(
                    left: 40,
                    right: 00,
                    top: 200,
                    bottom: 0,
                    child: InkWell(
                      onTap: () {
                        setState(() {
                          _color = Colors.white;
                        });
                      },
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            'Road Trip',
                            style: kInputTextStyle.copyWith(
                              color: _color,
                            ),
                          ),
                          Icon(
                            Icons.linear_scale_outlined,
                            color: _color,
                          ),
                        ],
                      ),
                    ),
                  ),
                  Positioned(
                    left: 150,
                    right: 00,
                    top: 200,
                    bottom: 0,
                    child: InkWell(
                      onTap: () {
                        setState(() {
                          _color = Colors.white;
                        });
                      },
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            'One-Way',
                            style: kInputTextStyle.copyWith(
                              color: _color,
                            ),
                          ),
                          Icon(
                            Icons.linear_scale_outlined,
                            color: _color,
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Container(
              height: 800,
              alignment: Alignment.topCenter,
              decoration: const BoxDecoration(
                color: Color(0xffF5F6F8),
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(40),
                  topRight: Radius.circular(40),
                ),
              ),
              child: DraggableScrollableSheet(
                initialChildSize: 1,
                minChildSize: 0.95,
                builder: (
                  BuildContext context,
                  ScrollController scrollController,
                ) {
                  return SingleChildScrollView(
                    controller: scrollController,
                    child: Container(
                      height: 1200,
                      decoration: const BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(40),
                          topRight: Radius.circular(40),
                        ),
                      ),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Padding(
                            padding: const EdgeInsets.all(16.0),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Text(
                                  'FROM',
                                  style: kInputTextStyle.copyWith(
                                      color: const Color(0xffB2C7C5)),
                                ),
                                Text(
                                  'TO',
                                  style: kInputTextStyle.copyWith(
                                      color: const Color(0xffB2C7C5)),
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
                                  'SUB',
                                  style: kMediumTextStyle.copyWith(
                                    color: const Color(0xff0B655A),
                                    fontSize: 32,
                                    fontWeight: FontWeight.w300,
                                  ),
                                ),
                                Image.asset(
                                  'assets/images/aroplane.png',
                                ),
                                Text(
                                  'LCY',
                                  style: kMediumTextStyle.copyWith(
                                    color: const Color(0xff0B655A),
                                    fontSize: 32,
                                    fontWeight: FontWeight.w300,
                                  ),
                                ),
                              ],
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(left: 16, right: 16),
                            child: Row(
                              mainAxisSize: MainAxisSize.min,
                              children: [
                                Expanded(
                                  child: buildTextFieldCheckOut(
                                    '',
                                    'Surabaya',
                                  ),
                                ),
                                const SizedBox(
                                  width: 15,
                                ),
                                Expanded(
                                  child: buildTextFieldCheckOut(
                                    '',
                                    'London City',
                                  ),
                                ),
                              ],
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(left: 16, right: 16),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Text(
                                  'DEPART',
                                  style: kInputTextStyle.copyWith(
                                      color: const Color(0xffB2C7C5)),
                                ),
                                Text(
                                  'RETURN',
                                  style: kInputTextStyle.copyWith(
                                      color: const Color(0xffB2C7C5)),
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
                              mainAxisSize: MainAxisSize.min,
                              children: [
                                Expanded(
                                  child: buildTextFieldCheckOut(
                                    'Expiry Date',
                                    'DD/MM/YY',
                                  ),
                                ),
                                const SizedBox(
                                  width: 15,
                                ),
                                Expanded(
                                  child: buildTextFieldCheckOut(
                                    'Expiry Date',
                                    'DD/MM/YY',
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
                              mainAxisSize: MainAxisSize.min,
                              children: [
                                Expanded(
                                  flex: 2,
                                  child: buildTextFieldCheckOut(
                                    'PASSENGER & LUGGAGE',
                                    'SEAT',
                                  ),
                                ),
                                const SizedBox(
                                  width: 15,
                                ),
                                Expanded(
                                  flex: 1,
                                  child: buildTextFieldCheckOut(
                                    '',
                                    'KG',
                                  ),
                                ),
                              ],
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(
                              left: 16,
                              right: 16,
                              top: 16,
                            ),
                            child: Text(
                              'Class',
                              style: kInputTextStyle.copyWith(
                                  color: const Color(0xffB2C7C5)),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(
                              left: 12,
                              right: 12,
                              top: 12,
                            ),
                            child: IntrinsicHeight(
                              child: Row(
                                children: [
                                  Text(
                                    'Economy',
                                    style: kMediumTextStyle.copyWith(
                                      color: const Color(0xffB2C7C5),
                                    ),
                                  ),
                                  const VerticalDivider(
                                    color: Color(0xffB2C7C5),
                                    thickness: 1.5,
                                  ),
                                  const SizedBox(
                                    width: 12,
                                  ),
                                  Text(
                                    'Bussiness',
                                    style: kMediumTextStyle.copyWith(
                                      color: const Color(0xffB2C7C5),
                                    ),
                                  ),
                                  const VerticalDivider(
                                    color: Color(0xffB2C7C5),
                                    thickness: 1.5,
                                  ),
                                  const SizedBox(
                                    width: 12,
                                  ),
                                  Text(
                                    'Elite',
                                    style: kMediumTextStyle.copyWith(
                                      color: const Color(0xffB2C7C5),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                          const SizedBox(
                            height: 24,
                          ),
                          Center(
                            child: buildMyButton(
                              context,
                              'Search Flights',
                              '/myflight',
                            ),
                          ),
                        ],
                      ),
                    ),
                  );
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
