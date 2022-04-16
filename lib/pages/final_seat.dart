import 'package:flutter/material.dart';
import 'package:fly_emirates/constants.dart';
import 'package:fly_emirates/widgets/my_final_seat.dart';

class FinalSeat extends StatelessWidget {
  const FinalSeat({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Padding(
              padding: const EdgeInsets.fromLTRB(24, 65, 0, 0),
              child: Row(
                children: [
                  IconButton(
                    onPressed: () {},
                    icon: const Icon(
                      Icons.arrow_back,
                      color: Color(0xff2B4240),
                      size: 36,
                    ),
                  ),
                  const SizedBox(
                    width: 40,
                  ),
                  Text(
                    'Flight Detail',
                    style: kMediumTextStyle.copyWith(
                      fontSize: 24,
                      fontWeight: FontWeight.w500,
                      color: const Color(0xff2B4240),
                    ),
                  ),
                ],
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            Container(
              width: double.infinity,
              height: MediaQuery.of(context).size.height,
              decoration: const BoxDecoration(
                color: kBackgroundColor, //new Color.fromRGBO(255, 0, 0, 0.0),
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(40.0),
                  topRight: Radius.circular(40.0),
                ),
              ),
              child: Padding(
                padding: const EdgeInsets.only(top: 24.0),
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    const MyFinalSeat(),
                    Column(
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
                          '19',
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
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Navigator.of(context).pushNamed('/confirmation');
        },
        backgroundColor: const Color(0xffFF8A63),
        shape: const RoundedRectangleBorder(
          borderRadius: BorderRadius.all(
            Radius.circular(15.0),
          ),
        ),
        child: const Icon(
          Icons.arrow_forward_ios,
        ),
      ),
    );
  }
}
