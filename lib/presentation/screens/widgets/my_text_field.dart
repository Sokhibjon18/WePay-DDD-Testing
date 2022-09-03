// ignore_for_file: must_be_immutable
import 'package:flutter/material.dart';
import 'package:we_pay/presentation/constants/colors.dart';

class MyTextField extends StatelessWidget {
  MyTextField({
    Key? key,
    required this.hint,
    required this.onChanged,
    required this.validator,
    this.text = '',
    this.inputType = TextInputType.text,
    this.enableAutoFocus = false,
  }) : super(key: key);

  final String hint;
  final Function onChanged;
  final Function validator;
  final String text;
  final bool enableAutoFocus;
  TextInputType inputType;

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      initialValue: text,
      autocorrect: false,
      autofocus: enableAutoFocus,
      cursorColor: blue,
      onChanged: (value) => onChanged(value),
      validator: (_) => validator(),
      keyboardType: inputType,
      decoration: InputDecoration(
        hintText: hint,
        hintStyle: const TextStyle(color: hintColor, letterSpacing: 0.1),
        filled: true,
        fillColor: grey,
        enabledBorder: const OutlineInputBorder(
          borderSide: BorderSide(width: 1, color: blue),
          borderRadius: BorderRadius.all(Radius.circular(8)),
        ),
        border: const OutlineInputBorder(
          borderSide: BorderSide(width: 1, color: blue),
          borderRadius: BorderRadius.all(Radius.circular(8)),
        ),
        contentPadding: const EdgeInsets.symmetric(horizontal: 12),
      ),
    );
  }
}
