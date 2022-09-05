import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:we_pay/application/product/product_form/product_form_bloc.dart';
import 'package:we_pay/domain/models/product/product.dart';
import 'package:we_pay/presentation/constants/colors.dart';
import 'package:we_pay/presentation/core/functions.dart';
import 'package:we_pay/presentation/core/extensions.dart';
import 'package:we_pay/presentation/screens/widgets/my_pop_up_menu.dart';

class ProductItem extends StatelessWidget {
  ProductItem({Key? key, required this.product}) : super(key: key);

  final Product product;
  final productMoreKey = GlobalKey();

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {},
      child: Container(
        margin: const EdgeInsets.symmetric(horizontal: 16, vertical: 6),
        padding: const EdgeInsets.all(12),
        decoration: BoxDecoration(
          color: white,
          borderRadius: BorderRadius.circular(8),
          boxShadow: const [
            BoxShadow(
              color: Colors.black12,
              blurRadius: 2,
            ),
          ],
        ),
        child: Row(
          children: [
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    product.name.getRight(),
                    style: const TextStyle(letterSpacing: 0.2),
                  ),
                  const SizedBox(height: 6),
                  Row(
                    children: [
                      Text(
                        'Narx: ${priceFixer(product.price.getRight())}',
                        style: const TextStyle(color: greyDark),
                      ),
                      const SizedBox(width: 16),
                      Text(
                        'Son: ${product.count}',
                        style: const TextStyle(color: greyDark),
                      ),
                    ],
                  )
                ],
              ),
            ),
            Text(
              priceFixer('${product.count * product.price.toInt()}'),
              style: const TextStyle(fontSize: 24, letterSpacing: 0.2),
            ),
            const SizedBox(width: 4),
            GestureDetector(
              key: productMoreKey,
              onTap: () => showproductActions(context),
              child: Icon(Icons.more_vert_rounded, color: product.color),
            )
          ],
        ),
      ),
    );
  }

  void showproductActions(BuildContext context) {
    showDialog(
      context: context,
      builder: (_) => MyPopUpMenu(
        moreIconRectCordinates: productMoreKey.globalPaintBounds,
        isHorizontal: false,
        popUpItems: [
          MyPopUpMenuItem(
            svgPath: 'assets/svg/edit.svg',
            text: 'O`zgartirish',
            action: () {
              context.read<ProductFormBloc>().add(ProductFormEvent.editingProduct(product));
            },
          ),
          MyPopUpMenuItem(
            svgPath: 'assets/svg/delete.svg',
            text: 'O`chirish',
            action: () {
              context.read<ProductFormBloc>().add(ProductFormEvent.deleteProduct(product));
            },
          )
        ],
      ),
    );
  }
}
