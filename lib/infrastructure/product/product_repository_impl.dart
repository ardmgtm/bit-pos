import 'package:dartz/dartz.dart';
import 'package:flutter/material.dart';
import 'package:injectable/injectable.dart';

import '../../domain/product/product.dart';
import '../../domain/product/product_failure.dart';
import '../../domain/product/product_repository.dart';
import 'local_data/product_local_data_source.dart';

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
}
