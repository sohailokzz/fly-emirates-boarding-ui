import 'package:flutter/material.dart';
import '../../constants.dart';

class MyTextField extends StatelessWidget {
  final String title;
  final IconData icon;
  final bool obsecure;
  final Widget? sufixIcon;
  const MyTextField(
      {Key? key,
      required this.title,
      required this.icon,
      required this.obsecure,
      this.sufixIcon})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.fromLTRB(32, 10, 32, 10),
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
        child: Center(
          child: Row(
            children: [
              Padding(
                padding: const EdgeInsets.only(
                  left: 16.0,
                  right: 16.0,
                ),
                child: Icon(
                  icon,
                  color: Colors.white,
                ),
              ),
              const VerticalDivider(
                color: Colors.white,
                thickness: 1.5,
                indent: 20.0,
              ),
              const SizedBox(
                width: 10.0,
              ),
              Expanded(
                child: TextFormField(
                  obscureText: obsecure,
                  cursorColor: Colors.white,
                  style: kInputTextStyle,
                  decoration: InputDecoration(
                    labelText: title,
                    labelStyle: kNormalTextStyle,
                    border: InputBorder.none,
                    suffixIcon: sufixIcon,
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
