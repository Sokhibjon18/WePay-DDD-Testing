import 'package:flutter/material.dart';
import '../../../../domain/models/product/product.dart';
import '../../../constants/colors.dart';

class ChartModel {
  String name;
  double amout;
  Color color;

  factory ChartModel.userTotalExpense(List<Product> productList, String userId) {
    ChartModel model = ChartModel.idle();
    for (var product in productList) {
      if (product.buyerId == userId) {
        model.name = product.buyerName;
        model.amout += product.price.toInt() * product.count;
        model.color = product.color;
      }
    }
    return model;
  }

  ChartModel({
    required this.name,
    required this.amout,
    required this.color,
  });

  factory ChartModel.idle() => ChartModel(name: '', amout: 0, color: white);
}
