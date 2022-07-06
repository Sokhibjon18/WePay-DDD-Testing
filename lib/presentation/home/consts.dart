import 'dart:math';
import 'package:flutter/material.dart';

//measurments
const double spaceBetweenCharts = pi / 90;
const Radius cornerRadius = Radius.circular(4);

//colors
const Color dashboardBkg = Color(0xffF8F8F8);
const dashboardHeader = Color(0xff5580EE);
const Color dashboardSecondary = Color(0xff1E3A47);
const Color dashboardTertiary = Color(0xffFCF8BB);

//textSpan
const TextSpan totalBalanceText = TextSpan(
  text: 'Total cost',
  style: TextStyle(
    color: dashboardSecondary,
    fontWeight: FontWeight.w500,
    fontSize: 12,
    letterSpacing: 0.2,
  ),
);

Container colorOnChart() {
  return Container(
    margin: const EdgeInsets.only(right: 32, left: 32, top: 24),
    child: const Text(
      'Color on the chart',
      style: TextStyle(
        fontWeight: FontWeight.w400,
        fontSize: 14,
      ),
    ),
  );
}

//textSpan
const TextSpan makeAPaymentText = TextSpan(
  text: 'Make a payment →',
  style: TextStyle(
    color: Colors.grey,
    fontWeight: FontWeight.w500,
    fontSize: 12,
    letterSpacing: 0.2,
  ),
);

Container addButton(){
  return Container(
    height: 45,
    margin: const EdgeInsets.only(left: 32, right: 32, top: 25),
    color: Colors.blue,
    child: const Center(
        child: Text(
          'Add',
          style: TextStyle(
              color: Colors.white,
              fontSize: 16),
        )),
  );
}
