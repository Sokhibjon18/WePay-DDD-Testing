import 'dart:async';

import 'package:dartz/dartz.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:uuid/uuid.dart';
import 'package:we_pay/domain/models/product/product.dart';
import 'package:we_pay/domain/product/i_product_repository.dart';
import 'package:we_pay/domain/product/product_failure.dart';
import 'package:we_pay/domain/product/value_objects.dart';

part 'product_form_event.dart';
part 'product_form_state.dart';
part 'product_form_bloc.freezed.dart';

@injectable
class ProductFormBloc extends Bloc<ProductFormEvent, ProductFormState> {
  final IProductRepository _repository;

  StreamController<DateTime> productDateTime = StreamController.broadcast();

  ProductFormBloc(this._repository) : super(ProductFormState.initial()) {
    on<_Initial>((event, emit) {
      emit(ProductFormState.initial());
    });
    on<_EditingProduct>((event, emit) {
      emit(ProductFormState.edit(event.product));
    });
    on<_NameChanged>((event, emit) {
      emit(state.copyWith(productName: ProductName(event.name), creationFailure: none()));
    });
    on<_PriceChanged>((event, emit) {
      emit(state.copyWith(price: ProductPrice(event.price), creationFailure: none()));
    });
    on<_NoteChanged>((event, emit) {
      emit(state.copyWith(note: event.note, creationFailure: none()));
    });
    on<_DateChanged>((event, emit) {
      emit(state.copyWith(dateTime: event.date, creationFailure: none()));
      productDateTime.add(event.date);
    });
    on<_CountChanged>((event, emit) {
      emit(state.copyWith(count: ProductCount(event.count), creationFailure: none()));
    });
    on<_UpdateProduct>((event, emit) async {
      Either<ProductFailure, Unit>? failureOrSuccess;

      final validateName = state.productName.isValid();
      final validatePrice = state.price.isValid();
      final validateCount = state.count.isValid();

      if (validateName && validatePrice && validateCount) {
        emit(state.copyWith(
          loading: true,
          creationFailure: none(),
        ));

        final currentProduct = event.product;

        failureOrSuccess = await _repository.update(currentProduct.copyWith(
          uid: event.product.uid,
          name: state.productName,
          price: state.price,
          note: state.note,
          date: state.dateTime,
          count: state.count.getRight(),
        ));
      }

      emit(state.copyWith(
        loading: false,
        showErrorMessage: true,
        creationFailure: optionOf(failureOrSuccess),
      ));
    });
    on<_CreateProduct>((event, emit) async {
      Either<ProductFailure, Unit>? failureOrSuccess;

      final validateName = state.productName.isValid();
      final validatePrice = state.price.isValid();
      final validateCount = state.count.isValid();

      if (validateName && validatePrice && validateCount) {
        emit(state.copyWith(
          loading: true,
          creationFailure: none(),
        ));

        failureOrSuccess = await _repository.create(
          Product(
            uid: const Uuid().v4(),
            name: state.productName,
            price: state.price,
            note: state.note,
            date: state.dateTime,
            count: state.count.getRight(),
            apartmentId: event.apartmentId,
            buyerName: '',
            buyerId: '',
            color: Colors.redAccent,
          ),
        );
      }

      emit(state.copyWith(
        loading: false,
        showErrorMessage: true,
        creationFailure: optionOf(failureOrSuccess),
      ));
    });
    on<_DeleteProduct>((event, emit) async {
      Either<ProductFailure, Unit>? failureOrSuccess;

      emit(state.copyWith(
        loading: true,
        creationFailure: none(),
      ));

      failureOrSuccess = await _repository.delete(event.product);

      emit(state.copyWith(
        loading: false,
        showErrorMessage: true,
        creationFailure: optionOf(failureOrSuccess),
      ));
    });
  }
}
