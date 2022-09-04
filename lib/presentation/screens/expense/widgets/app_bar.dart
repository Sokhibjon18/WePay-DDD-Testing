import 'package:flutter/material.dart';
import 'package:we_pay/presentation/constants/colors.dart';

Widget expencePageAppBar(BuildContext context, {required Function onDebtorTaped}) => SafeArea(
      child: Container(
        padding: const EdgeInsets.only(right: 16),
        height: 50,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            GestureDetector(
              onTap: () {
                Navigator.of(context).pop();
              },
              child: Container(
                padding: const EdgeInsets.only(left: 16, right: 20),
                child: const Icon(Icons.arrow_back_rounded, color: blue),
              ),
            ),
            const Expanded(
              child: Text(
                'Xarajatlar',
                style: TextStyle(
                  color: black,
                  fontSize: 22,
                  fontWeight: FontWeight.w500,
                ),
              ),
            ),
            GestureDetector(
              onTap: () => onDebtorTaped,
              child: const Text(
                'Qarzdorlik',
                style: TextStyle(
                  fontWeight: FontWeight.w600,
                  fontSize: 14,
                  letterSpacing: 0.2,
                  color: blue,
                ),
              ),
            ),
          ],
        ),
      ),
    );
