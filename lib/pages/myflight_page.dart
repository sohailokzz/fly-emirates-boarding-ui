import 'package:flutter/material.dart';
import 'package:fly_emirates/constants.dart';

import '../widgets/my_flights.dart';

class MyFlightPage extends StatelessWidget {
  const MyFlightPage({Key? key}) : super(key: key);

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
                  const Positioned(
                    left: 0,
                    right: 250,
                    top: -180,
                    bottom: 0,
                    child: Icon(
                      Icons.line_axis_outlined,
                      color: Colors.white,
                    ),
                  ),
                  Positioned(
                    left: 220,
                    right: 0,
                    top: -180,
                    bottom: 0,
                    child: Image.asset(
                      'assets/images/ellipse.png',
                    ),
                  ),
                  Positioned(
                    left: 40,
                    right: 00,
                    top: 100,
                    bottom: 0,
                    child: Text(
                      'My Flights',
                      style: kInputTextStyle.copyWith(
                        fontSize: 32,
                      ),
                    ),
                  ),
                  const Positioned(
                    left: 40,
                    right: 00,
                    top: 150,
                    bottom: 0,
                    child: Text(
                      'Fly high anytime, to anywhere for anything',
                      style: kInputTextStyle,
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
                    child: SizedBox(
                      height: 1200,
                      child: Column(
                        children: [
                          Text(
                            'LASTEST ADD',
                            style: kInputTextStyle.copyWith(
                                color: const Color(0xffB2C7C5)),
                          ),
                          const MyFlights(),
                          const MyFlights(),
                          const MyFlights(),
                          const MyFlights(),
                          const MyFlights(),
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
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Navigator.of(context).pushNamed('/flightlist');
        },
        backgroundColor: const Color(0xffFF8A63),
        shape: const RoundedRectangleBorder(
          borderRadius: BorderRadius.all(
            Radius.circular(15.0),
          ),
        ),
        child: const Icon(
          Icons.add,
        ),
      ),
    );
  }
}
