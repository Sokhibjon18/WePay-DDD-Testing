import 'package:flutter/material.dart';
import 'package:flutter_slidable/flutter_slidable.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:we_pay/application/product/product_form/product_form_bloc.dart';
import 'package:we_pay/domain/models/product/product.dart';
import 'package:we_pay/presentation/constants/colors.dart';
import 'package:we_pay/presentation/screens/expense/widgets/product_dialog.dart';
import 'package:we_pay/presentation/screens/utils/functions.dart';

class ProductItem extends StatelessWidget {
  const ProductItem({Key? key, required this.product}) : super(key: key);

  final Product product;

  @override
  Widget build(BuildContext context) {
    return Slidable(
      startActionPane: ActionPane(
        openThreshold: 0.2,
        closeThreshold: 0.2,
        extentRatio: 0.4,
        motion: const DrawerMotion(),
        children: [
          SlidableAction(
            onPressed: (_) {
              context.read<ProductFormBloc>().add(ProductFormEvent.editingProduct(product));
            },
            backgroundColor: green,
            spacing: 8,
            icon: Icons.mode_edit_rounded,
            label: 'Edit',
          ),
          SlidableAction(
            onPressed: (_) {
              context.read<ProductFormBloc>().add(ProductFormEvent.deleteProduct(product));
            },
            spacing: 8,
            backgroundColor: red,
            icon: Icons.save,
            label: 'Delete',
          ),
        ],
      ),
      child: InkWell(
        onTap: () {
          showDialog(context: context, builder: (_) => ProductDialog(product: product));
        },
        child: ListTile(
          leading: Container(
            margin: const EdgeInsets.symmetric(vertical: 4),
            width: 3,
            color: product.color,
          ),
          minLeadingWidth: 4,
          contentPadding: const EdgeInsets.symmetric(horizontal: 24),
          title: Text(product.name.getRight()),
          subtitle: Text('${priceFixer(product.price.getRight())} x ${product.count}'),
          trailing: Text(priceFixer('${product.count * product.price.toInt()}')),
        ),
      ),
    );
  }
}
