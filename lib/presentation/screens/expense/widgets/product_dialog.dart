import 'package:flutter/material.dart';
import 'package:we_pay/domain/models/product/product.dart';
import 'package:we_pay/presentation/constants/colors.dart';
import 'package:we_pay/presentation/core/functions.dart';

class ProductDialog extends StatelessWidget {
  const ProductDialog({Key? key, required this.product}) : super(key: key);

  final Product product;

  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.center,
      padding: const EdgeInsets.symmetric(horizontal: 48),
      child: ClipRRect(
        borderRadius: BorderRadius.circular(15),
        clipBehavior: Clip.hardEdge,
        child: Container(
          color: white,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisSize: MainAxisSize.min,
            children: [
              Container(
                height: 40,
                color: product.color,
                width: double.infinity,
                alignment: Alignment.center,
                child: const Text(
                  'Info',
                  style: TextStyle(
                    color: white,
                    fontSize: 16,
                    fontWeight: FontWeight.bold,
                    letterSpacing: 0.8,
                  ),
                ),
              ),
              Container(
                padding: const EdgeInsets.symmetric(horizontal: 32, vertical: 16),
                child: Text(
                  product.note == null
                      ? 'Without notes\n\n${product.date.day} ${getMonthAndYear(product.date)}'
                      : '${product.note}\n\n${product.date.day} ${getMonthAndYear(product.date)}',
                  style: const TextStyle(fontSize: 16),
                  textAlign: TextAlign.left,
                ),
              ),
              GestureDetector(
                onTap: () => Navigator.pop(context),
                child: SizedBox(
                  height: 40,
                  width: double.infinity,
                  child: Text(
                    'Ok',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      color: product.color,
                      fontSize: 16,
                      fontWeight: FontWeight.bold,
                      letterSpacing: 0.8,
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
