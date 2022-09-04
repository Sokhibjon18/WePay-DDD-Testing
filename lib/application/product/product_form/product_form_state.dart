part of 'product_form_bloc.dart';

@freezed
class ProductFormState with _$ProductFormState {
  const factory ProductFormState({
    required ProductName productName,
    required ProductPrice price,
    required DateTime dateTime,
    required ProductCount count,
    required bool loading,
    required bool showErrorMessage,
    required Option<Either<ProductFailure, Unit>> creationOption,
    required Option<Either<ProductFailure, Unit>> updateOption,
    required Option<Either<ValueFailure, Product>> editOption,
    required Option<Either<ValueFailure, Product>> deleteOption,
  }) = _ProductFormState;

  factory ProductFormState.initial() => ProductFormState(
        productName: ProductName(''),
        price: ProductPrice(''),
        dateTime: DateTime.now(),
        count: ProductCount(1),
        loading: false,
        showErrorMessage: false,
        creationOption: none(),
        updateOption: none(),
        editOption: none(),
        deleteOption: none(),
      );

  factory ProductFormState.edit(Product product) => ProductFormState(
        productName: ProductName(product.name.getRight()),
        price: ProductPrice(product.price.getRight()),
        dateTime: product.date,
        count: ProductCount(product.count),
        loading: false,
        showErrorMessage: false,
        creationOption: none(),
        updateOption: none(),
        editOption: none(),
        deleteOption: none(),
      );
}
