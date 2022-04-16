import 'package:flutter/material.dart';
import 'package:fly_emirates/pages/check_out_page.dart';
import 'package:fly_emirates/pages/confirmation_page.dart';
import 'package:fly_emirates/pages/final_seat.dart';
import 'package:fly_emirates/pages/flight_booking_page.dart';
import 'package:fly_emirates/pages/flight_list_page.dart';
import 'package:fly_emirates/pages/home_page.dart';
import 'package:fly_emirates/pages/myflight_page.dart';
import 'package:fly_emirates/pages/otp_page.dart';
import 'package:fly_emirates/pages/registration_page.dart';
import 'package:fly_emirates/pages/verification_page.dart';

import 'pages/flight_details.dart';

void main() {
  runApp(
    MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Fly Emitates',
      initialRoute: '/',
      routes: {
        '/': (context) => const HomePage(),
        '/verification': (context) => const VerificationPage(),
        '/otppage': (context) => const OTPPage(),
        '/registration': (context) => const RegistraionPage(),
        '/checkout': (context) => const CheckOutPage(),
        '/myflight': (context) => const MyFlightPage(),
        '/confirmation': (context) => const ConfirmationPage(),
        '/flightbooking': (context) => const FlightBooking(),
        '/flightlist': (context) => const FlightList(),
        '/flightdetails': (context) => const FlightDetails(),
        '/myseat': (context) => const FinalSeat(),
      },
    ),
  );
}
