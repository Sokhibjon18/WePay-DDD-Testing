import 'package:flutter/material.dart';

Widget reusableTextField({
  required BuildContext context,
  required String hint,
  required Function onChanged,
  required Function validator,
}) {
  return TextFormField(
    cursorColor: Colors.white,
    onChanged: (value) => onChanged(value),
    validator: (_) => validator(),
    decoration: InputDecoration(
      labelText: hint,
      labelStyle: const TextStyle(color: Colors.grey),
      filled: true,
      floatingLabelBehavior: FloatingLabelBehavior.never,
      fillColor: Colors.white,
      border: OutlineInputBorder(
        borderSide: BorderSide(width: 1, color: Colors.grey[100]!),
      ),
    ),
  );
}
