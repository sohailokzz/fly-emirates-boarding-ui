import 'package:flutter/material.dart';
import 'package:fly_emirates/constants.dart';
import 'package:fly_emirates/widgets/date_day_timeline.dart';
import 'package:fly_emirates/widgets/myflight_list.dart';

import '../widgets/top_header.dart';

class FlightList extends StatelessWidget {
  const FlightList({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xffB2C7C5),
      body: SingleChildScrollView(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            const TopHeader(
              title: 'Flights',
              textColor: Colors.black,
              iconColor: Colors.black,
            ),
            const SizedBox(
              height: 20,
            ),
            const DateDayTimeline(),
            const SizedBox(
              height: 20,
            ),
            Container(
              width: double.infinity,
              decoration: const BoxDecoration(
                color: kBackgroundColor, //new Color.fromRGBO(255, 0, 0, 0.0),
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(40.0),
                  topRight: Radius.circular(40.0),
                ),
              ),
              child: Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.only(
                      left: 24,
                      top: 20,
                    ),
                    child: Row(
                      children: [
                        Text(
                          'Sort by:',
                          style: kInputTextStyle.copyWith(
                            color: const Color(0xffB2C7C5),
                          ),
                        ),
                        const SizedBox(
                          width: 10,
                        ),
                        Container(
                          height: 24,
                          width: 72,
                          decoration: BoxDecoration(
                            color: const Color(0xffF8F6E7).withOpacity(0.5),
                            borderRadius: const BorderRadius.all(
                              Radius.circular(8),
                            ),
                          ),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: [
                              Text(
                                'Price',
                                style: kInputTextStyle.copyWith(
                                    color: Colors.white),
                              ),
                              const Icon(
                                Icons.arrow_drop_down_outlined,
                                color: Colors.white,
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Text(
                      '4 flights available Jakarta to London.',
                      style: kInputTextStyle.copyWith(
                        color: Colors.white,
                      ),
                    ),
                  ),
                  const MyFlightsList(),
                  const MyFlightsList(),
                  const MyFlightsList(),
                  const MyFlightsList(),
                ],
              ),
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Navigator.of(context).pushNamed('/flightdetails');
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
