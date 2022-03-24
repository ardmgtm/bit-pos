import 'package:dartz/dartz.dart';

import '../entity/product/product.dart';
import '../failure/product_failure.dart';

abstract class ProductRepository {
  Future<Either<Product, ProductFailure>> createProduct(Product product);
  Future<Either<List<Product>, ProductFailure>> getProducts();
  Future<Either<Product, ProductFailure>> updateProduct(Product product);
  Future<Either<Product, ProductFailure>> getProduct(int id);
  Future<Either<int, ProductFailure>> deleteProduct(int id);
}
