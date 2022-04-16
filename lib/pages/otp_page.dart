import 'package:flutter/material.dart';
import 'package:flutter_otp_text_field/flutter_otp_text_field.dart';
import 'package:fly_emirates/constants.dart';
import 'package:fly_emirates/widgets/buttons/my_button.dart';
import '../widgets/buttons/my_button.dart';

class OTPPage extends StatelessWidget {
  const OTPPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kBackgroundColor,
      body: Center(
        child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Image.asset('assets/images/otplogo.png'),
              const SizedBox(
                height: 48,
              ),
              Text(
                'OTP Verification',
                style: kMediumTextStyle.copyWith(
                  fontSize: 24,
                ),
              ),
              RichText(
                text: const TextSpan(
                  text: 'Enter the OTP sent to',
                  style: kNormalTextStyle,
                  children: <TextSpan>[
                    TextSpan(
                      text: ' +62-81313064456',
                      style: kMediumTextStyle,
                    ),
                  ],
                ),
              ),
              const SizedBox(
                height: 48,
              ),
              OtpTextField(
                focusedBorderColor: Colors.white,
                cursorColor: Colors.white,
                borderColor: Colors.white,
                numberOfFields: 4,
                textStyle: const TextStyle(
                  fontFamily: 'Work Sans',
                  fontWeight: FontWeight.w500,
                  fontSize: 24,
                  color: Color(0xFFF8F6E7),
                ),
                onCodeChanged: (String code) {},
              ),
              const SizedBox(
                height: 16,
              ),
              RichText(
                text: const TextSpan(
                  text: 'Dont receive the OTP?',
                  style: kNormalTextStyle,
                  children: <TextSpan>[
                    TextSpan(
                      text: ' Resend OTP',
                      style: kMediumTextStyle,
                    ),
                  ],
                ),
              ),
              const SizedBox(
                height: 50,
              ),
              buildMyButton(
                context,
                'Verify & Procceed',
                '/registration',
              )
            ],
          ),
        ),
      ),
    );
  }
}
