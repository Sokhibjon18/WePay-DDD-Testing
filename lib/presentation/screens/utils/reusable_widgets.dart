import 'package:flutter/material.dart';

Widget reusableTextField({
  required BuildContext context,
  required String hint,
  required Function onChanged,
  required Function validator,
  required String text,
  TextInputType inputType = TextInputType.text,
  bool enable = true,
}) {
  return TextFormField(
    enabled: enable,
    cursorColor: Colors.white,
    onChanged: (value) => onChanged(value),
    validator: (_) => validator(),
    initialValue: text,
    keyboardType: inputType,
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
