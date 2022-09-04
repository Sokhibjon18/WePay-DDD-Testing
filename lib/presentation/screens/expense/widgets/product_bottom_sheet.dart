import 'dart:developer';

import 'package:another_flushbar/flushbar_helper.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:we_pay/application/product/product_actor/product_actor_bloc.dart';
import 'package:we_pay/application/product/product_form/product_form_bloc.dart';
import 'package:we_pay/domain/models/product/product.dart';
import 'package:we_pay/presentation/constants/colors.dart';
import 'package:we_pay/presentation/core/functions.dart';
import 'package:we_pay/presentation/screens/widgets/my_btn.dart';

void productBottomsheet(BuildContext context, {Product? product}) {
  showModalBottomSheet<dynamic>(
    context: scaffoldContext(context),
    backgroundColor: Colors.transparent,
    isScrollControlled: true,
    builder: (bottomSheetContext) => BlocBuilder<ProductFormBloc, ProductFormState>(
      builder: (context, state) {
        return SingleChildScrollView(
          child: Container(
            margin: EdgeInsets.only(bottom: MediaQuery.of(context).viewInsets.bottom),
            padding: const EdgeInsets.all(16),
            decoration: const BoxDecoration(
              borderRadius: BorderRadius.only(
                topLeft: Radius.circular(12),
                topRight: Radius.circular(12),
              ),
              color: white,
            ),
            child: Form(
              autovalidateMode: context.read<ProductFormBloc>().state.showErrorMessage
                  ? AutovalidateMode.always
                  : AutovalidateMode.disabled,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                mainAxisSize: MainAxisSize.min,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    children: [
                      GestureDetector(
                        onTap: () => Navigator.pop(context),
                        child: const Icon(Icons.close_rounded, color: blue, size: 28),
                      ),
                      const SizedBox(width: 20),
                      Text(
                        product == null ? 'Chiqim qo`shish' : 'O`zgartirish',
                        style: const TextStyle(fontSize: 20, fontWeight: FontWeight.w500),
                      ),
                    ],
                  ),
                  const SizedBox(height: 32),
                  const Text(
                    'Nomi',
                    style: TextStyle(
                      color: labelColor,
                      fontSize: 14,
                      letterSpacing: 0.2,
                    ),
                  ),
                  const SizedBox(height: 8),
                  TextFormField(
                    autocorrect: false,
                    cursorColor: blue,
                    onChanged: (text) =>
                        context.read<ProductFormBloc>().add(ProductFormEvent.nameChanged(text)),
                    validator: (_) => context.read<ProductFormBloc>().state.productName.value.fold(
                          (f) => f.maybeMap(
                            shortageName: (_) => 'Nom judayam kalta',
                            orElse: () => null,
                          ),
                          (r) => null,
                        ),
                    decoration: const InputDecoration(
                      hintText: 'Chiqim nomi',
                      hintStyle: TextStyle(color: hintColor, letterSpacing: 0.1),
                      filled: true,
                      fillColor: grey,
                      enabledBorder: OutlineInputBorder(
                        borderSide: BorderSide(width: 1, color: blue),
                        borderRadius: BorderRadius.all(Radius.circular(8)),
                      ),
                      border: OutlineInputBorder(
                        borderSide: BorderSide(width: 1, color: blue),
                        borderRadius: BorderRadius.all(Radius.circular(8)),
                      ),
                      contentPadding: EdgeInsets.symmetric(horizontal: 12),
                    ),
                  ),
                  const SizedBox(height: 24),
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Expanded(
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            const Text(
                              'Narxi',
                              style: TextStyle(
                                color: labelColor,
                                fontSize: 14,
                                letterSpacing: 0.2,
                              ),
                            ),
                            const SizedBox(height: 8),
                            TextFormField(
                              autocorrect: false,
                              cursorColor: blue,
                              keyboardType: TextInputType.number,
                              onChanged: (text) => context
                                  .read<ProductFormBloc>()
                                  .add(ProductFormEvent.priceChanged(text)),
                              validator: (_) =>
                                  context.read<ProductFormBloc>().state.price.value.fold(
                                        (f) => f.maybeMap(
                                          invalidNumber: (_) => 'Narxda xatolik',
                                          orElse: () => null,
                                        ),
                                        (r) => null,
                                      ),
                              decoration: const InputDecoration(
                                hintText: 'Chiqim narxi',
                                hintStyle: TextStyle(color: hintColor, letterSpacing: 0.1),
                                filled: true,
                                fillColor: grey,
                                enabledBorder: OutlineInputBorder(
                                  borderSide: BorderSide(width: 1, color: blue),
                                  borderRadius: BorderRadius.all(Radius.circular(8)),
                                ),
                                border: OutlineInputBorder(
                                  borderSide: BorderSide(width: 1, color: blue),
                                  borderRadius: BorderRadius.all(Radius.circular(8)),
                                ),
                                contentPadding: EdgeInsets.symmetric(horizontal: 12),
                              ),
                            ),
                          ],
                        ),
                      ),
                      const SizedBox(width: 32),
                      Expanded(
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            const Text(
                              'Soni',
                              style: TextStyle(
                                color: labelColor,
                                fontSize: 14,
                                letterSpacing: 0.2,
                              ),
                            ),
                            const SizedBox(height: 8),
                            Container(
                              height: 48,
                              decoration: BoxDecoration(
                                color: grey,
                                borderRadius: BorderRadius.circular(8),
                              ),
                              child: Row(
                                children: [
                                  Expanded(
                                    child: GestureDetector(
                                      onTap: () => context
                                          .read<ProductFormBloc>()
                                          .add(const ProductFormEvent.countChanged(-1)),
                                      child: const Icon(Icons.remove_rounded, color: blue),
                                    ),
                                  ),
                                  Expanded(
                                    child: Text(
                                      '${state.count.getRight()}',
                                      textAlign: TextAlign.center,
                                      style: const TextStyle(fontSize: 24, letterSpacing: 0.2),
                                    ),
                                  ),
                                  Expanded(
                                    child: GestureDetector(
                                      onTap: () => context
                                          .read<ProductFormBloc>()
                                          .add(const ProductFormEvent.countChanged(1)),
                                      child: const Icon(Icons.add_rounded, color: blue),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(height: 24),
                  MyBtn(
                    onTap: () {
                      if (!state.loading) {
                        final apartmentId = context.read<ProductActorBloc>().publicExpenseId;
                        product == null
                            ? BlocProvider.of<ProductFormBloc>(context)
                                .add(ProductFormEvent.creatProduct(apartmentId))
                            : BlocProvider.of<ProductFormBloc>(context)
                                .add(ProductFormEvent.updateProduct(product));
                      }
                    },
                    child: state.loading
                        ? const CircularProgressIndicator(color: Colors.white, strokeWidth: 2)
                        : Text(product == null ? 'Qo`shish' : 'O`zgartirish'),
                  ),
                  const SizedBox(height: 16),
                ],
              ),
            ),
          ),
        );
      },
    ),
  );
}
