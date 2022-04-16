import 'package:flutter/material.dart';
import '../constants.dart';
import '../widgets/buttons/my_button.dart';
import '../widgets/textfields/login_text_field.dart';
import '../widgets/welcome_note.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const WelcomeNote(),
            const MyTextField(
              icon: Icons.email_outlined,
              title: 'E-Mail',
              obsecure: false,
            ),
            const MyTextField(
              icon: Icons.lock_outline,
              title: 'Password',
              obsecure: true,
              sufixIcon: Icon(
                Icons.remove_red_eye,
                color: Colors.white,
              ),
            ),
            const SizedBox(
              height: 12,
            ),
            const Text(
              'Forgot Password?',
              style: kNormalTextStyle,
            ),
            const SizedBox(
              height: 32,
            ),
            buildMyButton(
              context,
              'Log in',
              '/verification',
            ),
            const SizedBox(
              height: 16,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: const [
                Text(
                  'Don’t have an accont ?',
                  style: kNormalTextStyle,
                ),
                SizedBox(
                  width: 8.0,
                ),
                Text(
                  'Sign up',
                  style: kMediumTextStyle,
                )
              ],
            )
          ],
        ),
      ),
    );
  }
}
