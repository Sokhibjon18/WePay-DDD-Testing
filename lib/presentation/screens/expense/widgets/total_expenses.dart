import 'package:flutter/material.dart';
import '../../../../domain/models/product/product.dart';
import '../custom_chart/chart_model.dart';
import '../custom_chart/custom_chart.dart';

class TotalExpenses extends StatelessWidget {
  const TotalExpenses(this.productList, {Key? key}) : super(key: key);

  final List<Product> productList;
  final double strokeWidth = 40;

  @override
  Widget build(BuildContext context) {
    var chartModulsOfUsers = getChartModulsOfUsers(productList);
    return CustomPaint(
      size: Size(MediaQuery.of(context).size.width * 0.7, MediaQuery.of(context).size.width * 0.7),
      painter: PieChartPainter(chartModulsOfUsers, chartWidth: strokeWidth),
    );
  }
}

List<ChartModel> getChartModulsOfUsers(List<Product> productList) {
  List<String> userIds = [];
  List<ChartModel> chartItems = [];
  for (var product in productList) {
    if (!userIds.contains(product.buyerId)) {
      userIds.add(product.buyerId);
    }
  }
  for (var userId in userIds) {
    chartItems.add(ChartModel.userTotalExpense(productList, userId));
  }
  return chartItems;
}
