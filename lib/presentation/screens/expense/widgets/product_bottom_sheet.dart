import 'dart:developer';

import 'package:another_flushbar/flushbar_helper.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:we_pay/application/product/product_actor/product_actor_bloc.dart';
import 'package:we_pay/application/product/product_form/product_form_bloc.dart';
import 'package:we_pay/domain/models/product/product.dart';
import 'package:we_pay/presentation/screens/expense/date_picker/date_text_form_field.dart';
import 'package:we_pay/presentation/screens/utils/reusable_widgets.dart';

void productBottomsheet(BuildContext context, {Product? product}) {
  showModalBottomSheet<dynamic>(
    context: context,
    backgroundColor: Colors.transparent,
    isScrollControlled: true,
    builder: (bottomSheetContext) => SingleChildScrollView(
      child: Container(
        padding: EdgeInsets.only(bottom: MediaQuery.of(context).viewInsets.bottom),
        decoration: const BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(20),
            topRight: Radius.circular(20),
          ),
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          mainAxisSize: MainAxisSize.min,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              decoration: const BoxDecoration(
                color: Colors.blue,
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(20),
                  topRight: Radius.circular(20),
                ),
              ),
              height: 56,
              child: Center(
                child: Text(
                  product == null ? 'Adding product' : 'Edit product',
                  style: const TextStyle(
                    fontSize: 18,
                    color: Colors.white,
                  ),
                ),
              ),
            ),
            Container(
              padding: const EdgeInsets.only(top: 24, left: 32, right: 32, bottom: 32),
              child: BlocConsumer<ProductFormBloc, ProductFormState>(
                listener: (context, state) {
                  state.creationOption.map(
                    (a) => a.fold(
                      (f) => FlushbarHelper.createError(message: 'Server error')
                          .show(bottomSheetContext),
                      (r) => Navigator.pop(context),
                    ),
                  );
                  state.updateOption.map(
                    (a) => a.fold(
                      (f) => FlushbarHelper.createError(message: 'Server error')
                          .show(bottomSheetContext),
                      (r) => Navigator.pop(context),
                    ),
                  );
                },
                builder: (context, state) {
                  return Form(
                    autovalidateMode:
                        BlocProvider.of<ProductFormBloc>(context).state.showErrorMessage
                            ? AutovalidateMode.always
                            : AutovalidateMode.disabled,
                    child: Column(
                      children: [
                        reusableTextField(
                          context: context,
                          hint: 'Name',
                          inputType: TextInputType.name,
                          text: product?.name.getRight() ?? '',
                          onChanged: (text) {
                            BlocProvider.of<ProductFormBloc>(context)
                                .add(ProductFormEvent.nameChanged(text));
                          },
                          validator: () => BlocProvider.of<ProductFormBloc>(context)
                              .state
                              .productName
                              .value
                              .fold(
                                (f) => f.maybeMap(
                                  shortageName: (_) => 'Shortage of the name',
                                  orElse: () => null,
                                ),
                                (r) => null,
                              ),
                        ),
                        const SizedBox(height: 24),
                        reusableTextField(
                          context: context,
                          hint: 'Price',
                          inputType: TextInputType.number,
                          text: product?.price.getRight() ?? '',
                          onChanged: (text) {
                            BlocProvider.of<ProductFormBloc>(context)
                                .add(ProductFormEvent.priceChanged(text));
                          },
                          validator: () =>
                              BlocProvider.of<ProductFormBloc>(context).state.price.value.fold(
                                    (f) => f.maybeMap(
                                      invalidNumber: (error) => '${error.errorMessage}',
                                      orElse: () => log(f.toString()),
                                    ),
                                    (r) => null,
                                  ),
                        ),
                        const SizedBox(height: 24),
                        reusableTextField(
                          context: context,
                          hint: 'Note',
                          text: product?.note ?? '',
                          onChanged: (text) {
                            BlocProvider.of<ProductFormBloc>(context)
                                .add(ProductFormEvent.noteChanged(text));
                          },
                          validator: () {},
                        ),
                        const SizedBox(height: 24),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            const Expanded(child: DateTextFormField()),
                            const SizedBox(width: 24),
                            Expanded(
                              child: reusableTextField(
                                context: context,
                                hint: 'Count',
                                inputType: TextInputType.number,
                                text: product?.count.toString() ?? '1',
                                onChanged: (String text) {
                                  BlocProvider.of<ProductFormBloc>(context)
                                      .add(ProductFormEvent.countChanged(int.tryParse(text) ?? 0));
                                },
                                validator: () => BlocProvider.of<ProductFormBloc>(context)
                                    .state
                                    .count
                                    .value
                                    .fold(
                                      (f) => f.maybeMap(
                                        invalidProductCount: (error) => '${error.errorMessage}',
                                        orElse: () => log(f.toString()),
                                      ),
                                      (r) => null,
                                    ),
                              ),
                            ),
                          ],
                        ),
                        InkWell(
                          onTap: () {
                            if (!state.loading) {
                              final apartmentId = context.read<ProductActorBloc>().apartmentId;
                              product == null
                                  ? BlocProvider.of<ProductFormBloc>(context)
                                      .add(ProductFormEvent.creatProduct(apartmentId))
                                  : BlocProvider.of<ProductFormBloc>(context)
                                      .add(ProductFormEvent.updateProduct(product));
                            }
                          },
                          child: Container(
                            height: 45,
                            margin: const EdgeInsets.only(top: 24),
                            color: Colors.blue,
                            child: Center(
                              child: state.loading
                                  ? const CircularProgressIndicator(color: Colors.white)
                                  : const Text(
                                      'Save',
                                      style: TextStyle(color: Colors.white, fontSize: 16),
                                    ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  );
                },
              ),
            )
          ],
        ),
      ),
    ),
  );
}
