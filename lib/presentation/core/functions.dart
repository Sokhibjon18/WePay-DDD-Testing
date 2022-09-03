import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:lottie/lottie.dart';
import 'package:we_pay/presentation/constants/colors.dart';

String priceFixer(String price) {
  String newPrice = '';
  if (price.length > 3) {
    String withoutLast3 = price.substring(0, price.length - 3);
    String last3 = price.substring(price.length - 3);
    newPrice = '${priceFixer(withoutLast3)} $last3';
    return newPrice;
  } else {
    return price;
  }
}

changeStatusBarColor(Color color, Brightness iconsBrightness) {
  SystemChrome.setSystemUIOverlayStyle(
    SystemUiOverlayStyle(
      statusBarColor: color,
      statusBarIconBrightness: iconsBrightness,
    ),
  );
}

String getMonthAndYear(DateTime? date, {bool onlyMonth = false}) {
  date = date ?? DateTime.now();
  String month;
  switch (date.month) {
    case 1:
      month = 'January';
      break;
    case 2:
      month = 'February';
      break;
    case 3:
      month = 'March';
      break;
    case 4:
      month = 'April';
      break;
    case 5:
      month = 'May';
      break;
    case 6:
      month = 'June';
      break;
    case 7:
      month = 'July';
      break;
    case 8:
      month = 'August';
      break;
    case 9:
      month = 'September';
      break;
    case 10:
      month = 'October';
      break;
    case 11:
      month = 'November';
      break;
    case 12:
      month = 'December';
      break;
    default:
      month = 'Error';
  }
  return onlyMonth ? month : '$month, ${date.year}';
}

String getDayMonthYear(DateTime? time) {
  time = time ?? DateTime.now();
  String day = time.day < 10 ? '0${time.day}' : time.day.toString();
  String month = time.month < 10 ? '0${time.month}' : time.month.toString();
  return '$day.$month.${time.year}';
}

showProgressIndicator() => const CircularProgressIndicator(color: greyDark, strokeWidth: 2.5);

bool dialogShowing = false;

void showNoConnectionDialog(BuildContext context) async {
  dialogShowing = true;
  await showDialog(
    context: context,
    useSafeArea: false,
    barrierDismissible: false,
    barrierColor: Colors.black.withOpacity(0.7),
    builder: (_) => Lottie.asset('assets/lottie/con.json'),
  );
}

void dismissConnectionDialog(BuildContext context) {
  dialogShowing ? Navigator.pop(scaffoldContext(context)) : null;
}

BuildContext scaffoldContext(BuildContext context) => Scaffold.of(context).context;
