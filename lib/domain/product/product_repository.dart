import 'package:dartz/dartz.dart';

import 'product.dart';
import 'product_failure.dart';

abstract class ProductRepository {
  Future<Either<Product, ProductFailure>> createProduct(Product product);
  Future<Either<List<Product>, ProductFailure>> getProducts();
  Future<Either<Product, ProductFailure>> updateProduct(Product product);
  Future<Either<int, ProductFailure>> deleteProduct(int id);
}
