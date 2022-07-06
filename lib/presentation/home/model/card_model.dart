import 'dart:math';
import 'package:flutter/material.dart';

import '../screens/home_screen.dart';


class CardModel {
  final String name;
  double amount;
  final Color color;
  final bool overDue;
  final String customerName;


  CardModel({
    required this.name,
    required this.amount,
    required this.color,
    required this.customerName,
    this.overDue = false,

  });

  factory CardModel.mocked() {
    int index;
    Random ran = Random();

    Color getColor() {
      switch (ran.nextInt(5)) {
        case 0:
          return Colors.amber;
        case 1:
          return Colors.red;
        case 2:
          return Colors.green;
        case 3:
          return Colors.blue;
        default:
          return Colors.deepPurple;
      }
    }
    List products = ['Un','Shakar', 'Non', "Yog'",'Kartoshka','Piyoz', 'Sabzi', 'Smetana'];
    List customerName = ['Jushkin', 'Sokhib', 'Alisher', 'Jamshid'];
    List<Details> prices = [];
    return CardModel(
      customerName: customerName[ran.nextInt(4)].toString(),
      name: products[ran.nextInt(8)].toString(),
      amount: double.parse(prices[0].price),
      color: getColor(),
    );
  }
}
