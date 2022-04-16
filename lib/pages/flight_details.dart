import 'package:flutter/material.dart';
import 'package:fly_emirates/constants.dart';
import '../widgets/aeroplane_shap.dart';
import '../widgets/flight_seat_details.dart';
import '../widgets/top_header.dart';

class FlightDetails extends StatelessWidget {
  const FlightDetails({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            const TopHeader(
              title: 'Flight Detail',
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
              child: Padding(
                padding: const EdgeInsets.only(top: 24.0),
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: const [
                    AeroplaneShape(),
                    FlightSeatsDetails(),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Navigator.of(context).pushNamed('/myseat');
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
