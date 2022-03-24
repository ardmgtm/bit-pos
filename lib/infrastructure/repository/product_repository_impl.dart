import 'package:dartz/dartz.dart';
import 'package:injectable/injectable.dart';

import '../../domain/entity/product/product.dart';
import '../../domain/failure/product_failure.dart';
import '../../domain/repository/product_repository.dart';
import '../core/exception.dart';
import '../data_source/local/product/product_local_data_source.dart';

@LazySingleton(as: ProductRepository)
class ProductRepositoryImpl implements ProductRepository {
  final ProductLocalDataSource localDataSource;

  ProductRepositoryImpl(this.localDataSource);

  @override
  Future<Either<Product, ProductFailure>> createProduct(Product product) async {
    try {
      var newProduct = await localDataSource.createProduct(product);
      return Left(newProduct);
    } catch (e) {
      return const Right(ProductFailure.unexpected());
    }
  }

  @override
  Future<Either<int, ProductFailure>> deleteProduct(int id) async {
    try {
      var deletedId = await localDataSource.deleteProduct(id);
      return Left(deletedId);
    } catch (e) {
      return const Right(ProductFailure.unexpected());
    }
  }

  @override
  Future<Either<List<Product>, ProductFailure>> getProducts() async {
    try {
      var products = await localDataSource.getProducts();
      return left(products);
    } on NoDataException {
      return const Right(ProductFailure.noDataFailure());
    } catch (e) {
      return const Right(ProductFailure.unexpected());
    }
  }

  @override
  Future<Either<Product, ProductFailure>> updateProduct(Product product) async {
    try {
      var updatedProduct = await localDataSource.updateProduct(product);
      return Left(updatedProduct);
    } catch (e) {
      return const Right(ProductFailure.unexpected());
    }
  }

  @override
  Future<Either<Product, ProductFailure>> getProduct(int id) async {
    try {
      var product = await localDataSource.getProduct(id);
      return Left(product);
    } catch (e) {
      return const Right(ProductFailure.unexpected());
    }
  }
}
