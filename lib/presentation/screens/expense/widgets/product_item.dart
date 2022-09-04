import 'package:flutter/material.dart';
import 'package:flutter_slidable/flutter_slidable.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:we_pay/application/product/product_form/product_form_bloc.dart';
import 'package:we_pay/domain/models/product/product.dart';
import 'package:we_pay/presentation/constants/colors.dart';
import 'package:we_pay/presentation/old_widgets/product_dialog.dart';
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
    // Slidable(
    //   startActionPane: ActionPane(
    //     openThreshold: 0.2,
    //     closeThreshold: 0.2,
    //     extentRatio: 0.4,
    //     motion: const DrawerMotion(),
    //     children: [
    //       SlidableAction(
    //         onPressed: (_) {
    //           context.read<ProductFormBloc>().add(ProductFormEvent.editingProduct(product));
    //         },
    //         backgroundColor: green,
    //         spacing: 8,
    //         icon: Icons.mode_edit_rounded,
    //         label: 'Edit',
    //       ),
    //       SlidableAction(
    //         onPressed: (_) {
    //           context.read<ProductFormBloc>().add(ProductFormEvent.deleteProduct(product));
    //         },
    //         spacing: 8,
    //         backgroundColor: red,
    //         icon: Icons.save,
    //         label: 'Delete',
    //       ),
    //     ],
    //   ),
    //   child: InkWell(
    //     onTap: () {
    //       showDialog(context: context, builder: (_) => ProductDialog(product: product));
    //     },
    //     child: ListTile(
    //       leading: Container(
    //         margin: const EdgeInsets.symmetric(vertical: 4),
    //         width: 3,
    //         color: product.color,
    //       ),
    //       minLeadingWidth: 4,
    //       contentPadding: const EdgeInsets.symmetric(horizontal: 24),
    //       title: Text(product.name.getRight()),
    //       subtitle: Text('${priceFixer(product.price.getRight())} x ${product.count}'),
    //       trailing: Text(priceFixer('${product.count * product.price.toInt()}')),
    //     ),
    //   ),
    // );
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
            action: () {},
          ),
          MyPopUpMenuItem(
            svgPath: 'assets/svg/delete.svg',
            text: 'O`chirish',
            action: () {},
          )
        ],
      ),
    );
  }
}
