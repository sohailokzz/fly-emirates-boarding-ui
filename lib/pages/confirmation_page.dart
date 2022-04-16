import 'package:flutter/material.dart';
import 'package:fly_emirates/constants.dart';
import 'package:fly_emirates/widgets/buttons/back_home_btn.dart';
import 'package:fly_emirates/widgets/buttons/my_button.dart';

class ConfirmationPage extends StatelessWidget {
  const ConfirmationPage({Key? key}) : super(key: key);

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
                    'Confirmation',
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
              padding: const EdgeInsets.only(
                top: 24,
                bottom: 24,
              ),
              width: double.infinity,
              decoration: const BoxDecoration(
                color: kBackgroundColor, //new Color.fromRGBO(255, 0, 0, 0.0),
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(40.0),
                  topRight: Radius.circular(40.0),
                ),
              ),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Image.asset('assets/images/doneimage.png'),
                  Text(
                    'Done',
                    style: kMediumTextStyle.copyWith(
                      fontSize: 24,
                    ),
                  ),
                  Text(
                    'Your ticket purchase\n successfully completed',
                    textAlign: TextAlign.center,
                    style: kNormalTextStyle.copyWith(
                      fontSize: 16,
                    ),
                    maxLines: 2,
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  Image.asset('assets/images/ticketimage.png'),
                  const SizedBox(
                    height: 24,
                  ),
                  buildMyButton(
                    context,
                    'Download Ticket',
                    '/flightbooking',
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  const BackHomeBtn(
                    title: 'Back to Home',
                  )
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
