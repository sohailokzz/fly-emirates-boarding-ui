import 'package:country_code_picker/country_code_picker.dart';
import 'package:flutter/material.dart';
import '../../constants.dart';

class PhoneNumberField extends StatelessWidget {
  const PhoneNumberField({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(
        horizontal: 32,
      ),
      child: Container(
        height: 60,
        width: MediaQuery.of(context).size.width,
        decoration: const BoxDecoration(
          border: Border(
            bottom: BorderSide(
              color: Colors.white,
            ),
          ),
        ),
        child: Row(
          children: [
            CountryCodePicker(
              initialSelection: 'pk',
              textStyle: kInputTextStyle.copyWith(
                fontSize: 20,
              ),
              showFlag: false,
            ),
            Expanded(
              child: TextFormField(
                cursorColor: Colors.white,
                style: const TextStyle(
                  fontFamily: 'Work Sans',
                  fontWeight: FontWeight.w500,
                  height: 1.5,
                  fontSize: 20,
                  letterSpacing: 1,
                  color: Color(0xFFF8F6E7),
                ),
                keyboardType: TextInputType.number,
                decoration: InputDecoration(
                  hintText: 'Enter here',
                  hintStyle: kInputTextStyle.copyWith(
                    fontSize: 20,
                  ),
                  border: InputBorder.none,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
