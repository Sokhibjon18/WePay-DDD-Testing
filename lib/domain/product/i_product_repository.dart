import 'package:dartz/dartz.dart';
import 'package:we_pay/domain/models/product/product.dart';
import 'package:we_pay/domain/product/product_failure.dart';

abstract class IProductRepository {
  Stream<Either<ProductFailure, List<Product>>> watchAll(String apartmentId, DateTime date);
  // Stream<Either<ProductFailure, List<Product>>> watchUncomleted();
  Future<Either<ProductFailure, Unit>> create(Product product);
  Future<Either<ProductFailure, Unit>> update(Product product);
  Future<Either<ProductFailure, Unit>> delete(Product product);
}
