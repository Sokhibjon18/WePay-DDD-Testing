import 'dart:math';

import 'package:flutter/material.dart';

//measurments
const double spaceBetweenCharts = pi / 90;
const Radius cornerRadius = Radius.circular(4);

//colors
const Color dashboardBkg = Color(0xffF8F8F8);
const dashboardHeader = Color(0xff44D0D0);
const Color dashboardSecondary = Color(0xff1E3A47);
const Color dashboardTertiary = Color(0xffFCF8BB);

//textSpan
const TextSpan totalBalanceText = TextSpan(
  text: 'Total Expence',
  style: TextStyle(
    color: dashboardSecondary,
    fontWeight: FontWeight.w500,
    fontSize: 12,
    letterSpacing: 0.2,
  ),
);

//textSpan
const TextSpan unitOfCurrency = TextSpan(
  text: 'thousend sum',
  style: TextStyle(
    color: Colors.grey,
    fontWeight: FontWeight.w500,
    fontSize: 12,
    letterSpacing: 0.2,
  ),
);
