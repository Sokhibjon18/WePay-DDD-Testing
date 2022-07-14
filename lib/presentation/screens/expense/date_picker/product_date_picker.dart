import 'package:flutter/material.dart';

Future<DateTime?> showDatePickerForProduct(BuildContext context) async {
  final currentDate = DateTime.now();
  DateTime? time = await showDatePicker(
    context: context,
    initialDate: currentDate,
    firstDate: DateTime(2022, 07),
    lastDate: DateTime(2030, 12),
  );
  return time;
}
