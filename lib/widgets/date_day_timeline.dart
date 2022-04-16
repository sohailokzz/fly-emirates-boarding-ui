import 'package:date_picker_timeline/date_picker_timeline.dart';
import 'package:flutter/material.dart';

class DateDayTimeline extends StatefulWidget {
  const DateDayTimeline({Key? key, this.title}) : super(key: key);
  final String? title;

  @override
  _DateDayTimelineState createState() => _DateDayTimelineState();
}

class _DateDayTimelineState extends State<DateDayTimeline> {
  final DatePickerController _controller = DatePickerController();

  DateTime _selectedValue = DateTime.now();

  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return DatePicker(
      DateTime.now(),
      width: 60,
      height: 80,
      controller: _controller,
      initialSelectedDate: DateTime.now(),
      selectionColor: const Color(0xffB2C7C5),
      selectedTextColor: Colors.blue,
      deactivatedColor: Colors.grey,
      onDateChange: (date) {
        // New date selected
        setState(() {
          _selectedValue = date;
        });
      },
    );
  }
}
