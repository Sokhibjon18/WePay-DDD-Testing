import 'package:flutter/material.dart';
import '../../../constants/colors.dart';

Widget authHeader(String title) => Container(
      padding: const EdgeInsets.symmetric(vertical: 42, horizontal: 32),
      width: double.maxFinite,
      height: 200,
      decoration: const BoxDecoration(
        image: DecorationImage(
          image: AssetImage('assets/images/auth_top_background.png'),
          fit: BoxFit.fill,
        ),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            title,
            style: const TextStyle(
              fontWeight: FontWeight.w500,
              fontSize: 24,
              letterSpacing: 0.25,
              color: white,
            ),
          ),
          const SizedBox(height: 4),
          const Text(
            'Endi hisoblash biz bilan osonroq',
            style: TextStyle(fontSize: 13, color: white),
          ),
        ],
      ),
    );
