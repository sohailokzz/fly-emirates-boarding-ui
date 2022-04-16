import 'package:flutter/material.dart';
import 'package:fly_emirates/constants.dart';
import 'package:fly_emirates/widgets/buttons/my_button.dart';
import '../widgets/textfields/phone_number_field.dart';

class VerificationPage extends StatelessWidget {
  const VerificationPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kBackgroundColor,
      body: Center(
        child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Image.asset('assets/images/otpimg.png'),
              const SizedBox(
                height: 64,
              ),
              Text(
                'OTP Verification',
                style: kMediumTextStyle.copyWith(
                  fontSize: 24,
                ),
              ),
              const Text(
                'We will send you an One Time Password \non this mobile number',
                textAlign: TextAlign.center,
                style: kNormalTextStyle,
                maxLines: 2,
              ),
              const SizedBox(
                height: 48,
              ),
              const Text(
                'Enter Mobile Number',
                textAlign: TextAlign.center,
                style: kNormalTextStyle,
                maxLines: 2,
              ),
              const SizedBox(
                height: 10,
              ),
              const PhoneNumberField(),
              const SizedBox(
                height: 80,
              ),
              buildMyButton(context, 'Get OTP', '/otppage')
            ],
          ),
        ),
      ),
    );
  }
}
