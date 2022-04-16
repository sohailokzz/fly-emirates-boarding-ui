import 'package:flutter/material.dart';
import 'package:fly_emirates/constants.dart';
import 'package:fly_emirates/widgets/buttons/my_button.dart';
import 'package:fly_emirates/widgets/textfields/textfield_design.dart';
import '../widgets/top_header.dart';

class RegistraionPage extends StatelessWidget {
  const RegistraionPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kBackgroundColor,
      body: SingleChildScrollView(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            const TopHeader(
              title: 'Registration',
              textColor: Colors.white,
              iconColor: Colors.white,
            ),
            Flexible(
              fit: FlexFit.loose,
              child: Container(
                width: double.infinity,
                decoration: const BoxDecoration(
                  color: Colors.white, //new Color.fromRGBO(255, 0, 0, 0.0),
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(40.0),
                    topRight: Radius.circular(40.0),
                  ),
                ),
                child: Padding(
                  padding: const EdgeInsets.symmetric(
                    horizontal: 16.0,
                    vertical: 32,
                  ),
                  child: Column(
                    children: [
                      Text(
                        'Create Your Account',
                        style: kMediumTextStyle.copyWith(
                          color: const Color(0xff2B4240),
                          fontSize: 18,
                        ),
                      ),
                      const TextFieldDesignRegistration(
                        labelText: 'E-Mail Address',
                      ),
                      const TextFieldDesignRegistration(
                        labelText: 'Verify E-Mail Address',
                      ),
                      Row(
                        children: const [
                          Expanded(
                            child: TextFieldDesignRegistration(
                              labelText: 'First Name',
                            ),
                          ),
                          Expanded(
                            child: TextFieldDesignRegistration(
                              labelText: 'Last Name',
                            ),
                          ),
                        ],
                      ),
                      const TextFieldDesignRegistration(
                        labelText: 'Password',
                        obsecure: true,
                        sufixIcon: Icon(
                          Icons.remove_red_eye,
                          color: Color(0xff2B4240),
                        ),
                      ),
                      const TextFieldDesignRegistration(
                        obsecure: true,
                        labelText: 'Verify Password',
                        sufixIcon: Icon(
                          Icons.remove_red_eye,
                          color: Color(0xff2B4240),
                        ),
                      ),
                      const SizedBox(
                        height: 30,
                      ),
                      buildMyButton(
                        context,
                        'Create Account',
                        '/checkout',
                      ),
                      const SizedBox(
                        height: 20,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            'Don’t have an accont ?',
                            style: kNormalTextStyle.copyWith(
                              color: Colors.black,
                            ),
                          ),
                          const SizedBox(
                            width: 8.0,
                          ),
                          Text(
                            'Log in',
                            style: kMediumTextStyle.copyWith(
                              color: Colors.black,
                            ),
                          ),
                        ],
                      ),
                      const SizedBox(
                        height: 50,
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
