import 'package:dartz/dartz.dart';
import 'package:we_pay/domain/core/value_failure.dart';
import 'package:we_pay/domain/models/product/product.dart';
import 'package:we_pay/domain/product/product_failure.dart';

abstract class IProductRepository {
  Stream<Either<ProductFailure, List<Product>>> watchAllProductInApartment(
    String apartmentId,
    DateTime date,
  );
  Future<Either<ValueFailure, Product>> isUserOwnerOf(Product product);
  Future<List<Product>> updateUsersNameAndColor(List<Product> produts);
  Future<Either<ProductFailure, Unit>> create(Product product);
  Future<Either<ProductFailure, Unit>> update(Product product);
  Future<Either<ProductFailure, Unit>> delete(Product product);
  Future<void> sendNotification(List<String> usersList, String expenseInfo);
}
