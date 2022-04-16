import 'package:dotted_line/dotted_line.dart';
import 'package:flutter/material.dart';
import 'package:fly_emirates/constants.dart';
import 'package:fly_emirates/widgets/buttons/my_button.dart';
import 'package:fly_emirates/widgets/top_header.dart';
import '../widgets/textfields/my_textfield.dart';

class CheckOutPage extends StatelessWidget {
  const CheckOutPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            const TopHeader(
              title: 'Check Out',
              textColor: Colors.black,
              iconColor: Colors.black,
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
              child: Column(
                children: [
                  Container(
                    margin: const EdgeInsets.symmetric(
                      horizontal: 32,
                      vertical: 32,
                    ),
                    height: 60,
                    width: MediaQuery.of(context).size.width,
                    decoration: const BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.all(
                        Radius.circular(16),
                      ),
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Image.asset('assets/images/paypal.png'),
                        Image.asset('assets/images/mastercard.png'),
                        Image.asset('assets/images/stripe.png'),
                        Image.asset('assets/images/visa.png'),
                      ],
                    ),
                  ),
                  Container(
                    margin: const EdgeInsets.symmetric(
                      horizontal: 32,
                      vertical: 0,
                    ),
                    width: MediaQuery.of(context).size.width,
                    decoration: const BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.all(
                        Radius.circular(16),
                      ),
                    ),
                    child: Padding(
                      padding: const EdgeInsets.only(
                        left: 16,
                        right: 16,
                        top: 16,
                      ),
                      child: Column(
                        children: [
                          buildTextFieldCheckOut(
                            'Card Holder Name',
                            'Enter your name',
                          ),
                          buildTextFieldCheckOut(
                            'Card Number',
                            'Enter your card number',
                          ),
                          Row(
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
                                  'CVV',
                                  '000',
                                ),
                              ),
                            ],
                          ),
                          const SizedBox(
                            height: 20,
                          ),
                        ],
                      ),
                    ),
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  Container(
                    margin: const EdgeInsets.symmetric(
                      horizontal: 32,
                      vertical: 0,
                    ),
                    width: MediaQuery.of(context).size.width,
                    decoration: const BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.all(
                        Radius.circular(16),
                      ),
                    ),
                    child: Padding(
                      padding: const EdgeInsets.only(
                        left: 16,
                        right: 16,
                        top: 16,
                      ),
                      child: Column(
                        children: [
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text(
                                'Ticket Price',
                                style: kInputTextStyle.copyWith(
                                  color: const Color(0xffB2C7C5),
                                  fontSize: 16,
                                ),
                              ),
                              Text(
                                'IDR 0,0',
                                style: kInputTextStyle.copyWith(
                                  color: Colors.black,
                                  fontSize: 16,
                                ),
                              ),
                            ],
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text(
                                'Fare Tax',
                                style: kInputTextStyle.copyWith(
                                  color: const Color(0xffB2C7C5),
                                  fontSize: 16,
                                ),
                              ),
                              Text(
                                'IDR 0,0',
                                style: kInputTextStyle.copyWith(
                                  color: Colors.black,
                                  fontSize: 16,
                                ),
                              ),
                            ],
                          ),
                          const SizedBox(
                            height: 10,
                          ),
                          const DottedLine(
                            dashColor: Colors.grey,
                          ),
                          const SizedBox(
                            height: 10,
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text(
                                'Total Amount',
                                style: kInputTextStyle.copyWith(
                                  color: const Color(0xffFF8A63),
                                  fontSize: 16,
                                ),
                              ),
                              Text(
                                'IDR 0,0',
                                style: kInputTextStyle.copyWith(
                                  color: const Color(0xffFF8A63),
                                  fontSize: 16,
                                ),
                              ),
                            ],
                          ),
                          const SizedBox(
                            height: 10,
                          ),
                        ],
                      ),
                    ),
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  buildMyButton(
                    context,
                    'Procceed',
                    '/flightbooking',
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
