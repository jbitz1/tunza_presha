import 'package:flutter/material.dart';
import 'package:flutter_datetime_picker_plus/flutter_datetime_picker_plus.dart';
import 'package:tunza_presha/constants/color_constants.dart';

class CustomDateTimePicker extends StatelessWidget {
  const CustomDateTimePicker({super.key, required this.onConfirm, this.label});

  final Function(DateTime dateTime)? onConfirm;
  final String? label;

  @override
  Widget build(BuildContext context) {
    return TextButton(
      onPressed: () {
        DatePicker.showDateTimePicker(
          context,
          showTitleActions: true,
          minTime: DateTime.now(),
          maxTime: DateTime.now().add(const Duration(days: 500)),
          onChanged: (date) {},
          onConfirm: (date) {
            onConfirm!(date);
          },
          currentTime: DateTime.now(),
        );
      },
      child: Text(
        label ?? 'Select Date and Time',
        style: const TextStyle(color: primaryColor),
      ),
    );
  }
}
