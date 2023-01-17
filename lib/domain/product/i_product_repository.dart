import 'package:dartz/dartz.dart';
import '../core/value_failure.dart';
import '../models/product/product.dart';
import 'product_failure.dart';

abstract class IProductRepository {
  Stream<Either<ProductFailure, List<Product>>> watchAllProductInApartment(String publicExpenseId);
  Future<Either<ValueFailure, Product>> isUserOwnerOf(Product product);
  Future<List<Product>> updateUsersNameAndColor(List<Product> produts);
  Future<Either<ProductFailure, Unit>> create(Product product);
  Future<Either<ProductFailure, Unit>> update(Product product);
  Future<Either<ProductFailure, Unit>> delete(Product product);
  Future<void> sendNotification(List<String> usersList, String expenseInfo);
}
