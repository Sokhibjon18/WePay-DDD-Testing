import 'dart:math';

import 'package:flutter/material.dart';
import 'package:we_pay/presentation/constants/colors.dart';
import 'package:we_pay/presentation/screens/expense/custom_chart/chart_model.dart';
import 'package:we_pay/presentation/screens/expense/custom_chart/const.dart';

class PieChartPainter extends CustomPainter {
  List<ChartModel> listOfCards;
  late List<Path> listOfPaths;
  final double chartWidth;

  double totalBalance = 0;

  PieChartPainter(this.listOfCards, {this.chartWidth = 40}) {
    calculateTotalBalance();
  }

  void calculateTotalBalance() {
    totalBalance = 0;
    for (var card in listOfCards) {
      totalBalance += card.amout;
    }
  }

  void calculateChartAngels(Size size) {
    listOfPaths = [];
    double startingAngle = 0;

    Rect rect = Rect.fromLTRB(
      0 + chartWidth / 2,
      0 + chartWidth,
      size.width - chartWidth / 2,
      size.height,
    );

    for (int i = 0; i < listOfCards.length; i++) {
      double cardAngleInHalfCircle = listOfCards[i].amout * pi / totalBalance -
          (listOfCards.length - 1 == i ? 0 : spaceBetweenCharts);
      Path path = Path()..arcTo(rect, pi + startingAngle, cardAngleInHalfCircle, true);
      listOfPaths.add(path);
      startingAngle += spaceBetweenCharts + cardAngleInHalfCircle;
    }
  }

  void drawStartingAndEndingCorners(Canvas canvas, Size size) {
    Paint paintStartingRoundedCorner = Paint()
      ..color = listOfCards.first.color
      ..style = PaintingStyle.fill;

    Paint paintEndingRoundedCorner = Paint()
      ..color = listOfCards.last.color
      ..style = PaintingStyle.fill;

    canvas.drawRRect(
      RRect.fromLTRBAndCorners(
        0,
        size.height / 2 + chartWidth / 2 - 1,
        chartWidth,
        size.height / 2 + chartWidth / 2 + 8,
        bottomLeft: cornerRadius,
        bottomRight: cornerRadius,
      ),
      paintStartingRoundedCorner,
    );

    canvas.drawRRect(
      RRect.fromLTRBAndCorners(
        size.width - chartWidth,
        size.height / 2 + chartWidth / 2 - 1,
        size.width,
        size.height / 2 + chartWidth / 2 + 8,
        bottomLeft: cornerRadius,
        bottomRight: cornerRadius,
      ),
      paintEndingRoundedCorner,
    );
  }

  void drawTotalBalanceText(Canvas canvas, Size size) {
    final textPainter = TextPainter(
      text: totalBalanceText,
      textDirection: TextDirection.ltr,
    );

    textPainter.layout(
      minWidth: 0,
      maxWidth: size.width,
    );

    final xCenter = (size.width - textPainter.width) / 2;
    final yCenter = (size.height - textPainter.height + chartWidth) / 3;
    Offset totalBalanceOffset = Offset(xCenter, yCenter);
    textPainter.paint(canvas, totalBalanceOffset);
  }

  void drawBalanceText(Canvas canvas, Size size) {
    final balanceInThousandsUnit = totalBalance / 1000;
    TextSpan totalBalanceText = TextSpan(
      children: [
        TextSpan(
          style: TextStyle(
            color: black,
            fontWeight: FontWeight.w700,
            fontSize: size.width * 0.16,
          ),
          text: balanceInThousandsUnit >= 1000
              ? '${balanceInThousandsUnit ~/ 1000} ${(balanceInThousandsUnit % 1000).toInt()}'
              : '${balanceInThousandsUnit.toInt()}',
        ),
      ],
    );

    final textPainter = TextPainter(
      text: totalBalanceText,
      textDirection: TextDirection.ltr,
    );

    textPainter.layout(
      minWidth: 0,
      maxWidth: size.width,
    );

    final xCenter = (size.width - textPainter.width) / 2;
    final yCenter = (size.height - textPainter.height + chartWidth / 2 - 8) / 2;
    Offset totalBalanceOffset = Offset(xCenter, yCenter);
    textPainter.paint(canvas, totalBalanceOffset);
  }

  void drawUnitOfCurrency(Canvas canvas, Size size) {
    final textPainter = TextPainter(
      text: unitOfCurrency,
      textDirection: TextDirection.ltr,
    );

    textPainter.layout(
      minWidth: 0,
      maxWidth: size.width,
    );

    final xCenter = (size.width - textPainter.width) / 2;
    final yCenter = (size.height - textPainter.height + chartWidth) / 1.8;
    Offset totalBalanceOffset = Offset(xCenter, yCenter);
    textPainter.paint(canvas, totalBalanceOffset);
  }

  void drawChart(Canvas canvas) {
    Paint chartPaint = Paint()
      ..style = PaintingStyle.stroke
      ..strokeWidth = chartWidth;

    for (int i = 0; i < listOfPaths.length; i++) {
      chartPaint.color = listOfCards[i].color;
      canvas.drawPath(listOfPaths[i], chartPaint);
    }
  }

  @override
  void paint(Canvas canvas, Size size) {
    calculateChartAngels(size);
    drawChart(canvas);
    drawStartingAndEndingCorners(canvas, size);
    drawTotalBalanceText(canvas, size);
    drawUnitOfCurrency(canvas, size);
    drawBalanceText(canvas, size);
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) {
    return true;
  }
}
