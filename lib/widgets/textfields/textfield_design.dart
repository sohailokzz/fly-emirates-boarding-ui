import 'package:flutter/material.dart';
import 'package:fly_emirates/constants.dart';

class TextFieldDesignRegistration extends StatefulWidget {
  final String labelText;
  final bool? obsecure;
  final Widget? sufixIcon;
  const TextFieldDesignRegistration({
    Key? key,
    required this.labelText,
    this.obsecure,
    this.sufixIcon,
  }) : super(key: key);

  @override
  _TextFieldDesignRegistrationState createState() =>
      _TextFieldDesignRegistrationState();
}

class _TextFieldDesignRegistrationState
    extends State<TextFieldDesignRegistration> {
  final FocusNode _focusNode = FocusNode();
  Color _borderColor = Colors.grey;

  @override
  void initState() {
    super.initState();
    // Change color for border if focus was changed
    _focusNode.addListener(() {
      setState(() {
        _borderColor =
            _focusNode.hasFocus ? const Color(0xff2B4240) : Colors.grey;
      });
    });
  }

  @override
  void dispose() {
    _focusNode.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 50,
      margin: const EdgeInsets.all(8),
      decoration: BoxDecoration(
        border: Border.all(
          color: _borderColor,
        ),
        borderRadius: BorderRadius.circular(16),
      ),
      child: TextField(
        obscureText: widget.obsecure ?? true,
        cursorColor: Colors.black,
        focusNode: _focusNode,
        style: kInputTextStyle.copyWith(
          color: Colors.black,
        ),
        decoration: InputDecoration(
          suffixIcon: widget.sufixIcon,
          contentPadding: const EdgeInsets.only(left: 16, top: 6),
          border: InputBorder.none,
          labelText: widget.labelText,
          labelStyle: kInputTextStyle.copyWith(
            color: Colors.black,
          ),
        ),
      ),
    );
  }
}
