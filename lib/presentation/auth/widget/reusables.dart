import 'package:flutter/material.dart';

Container loginWithAnother(String imagePath, String text) {
  return Container(
    padding: const EdgeInsets.symmetric(vertical: 8),
    decoration: const BoxDecoration(
      color: Colors.white,
      boxShadow: [
        BoxShadow(spreadRadius: 0.5, color: Color(0xFF5580EE)),
      ],
    ),
    child: Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        CircleAvatar(
          radius: 16,
          backgroundColor: Colors.white,
          backgroundImage: AssetImage(imagePath),
        ),
        const SizedBox(width: 5),
        Text(
          text,
          style: const TextStyle(
            color: Colors.black,
            fontWeight: FontWeight.bold,
            fontSize: 13,
          ),
        ),
      ],
    ),
  );
}

Widget textBtn(String text, Function onTap) {
  return GestureDetector(
    onTap: () {
      onTap();
    },
    child: Text(
      text,
      style: const TextStyle(fontWeight: FontWeight.bold, color: Color(0xFF5580EE)),
    ),
  );
}
