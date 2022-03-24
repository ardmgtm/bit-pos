import 'package:injectable/injectable.dart';

import '../../../../domain/entity/product/product.dart';
import '../../../core/exception.dart';
import '../../../core/local_db.dart';

@lazySingleton
class ProductLocalDataSource {
  LocalDb localDb = LocalDb.instance;

  ProductLocalDataSource();

  Future<Product> createProduct(Product product) async {
    var db = await localDb.database;
    var id = await db.insert(tableProduct, product.toJson());

    Product newProduct = product.copyWith(id: id);
    return newProduct;
  }

  Future<List<Product>> getProducts() async {
    var db = await localDb.database;
    var jsons = await db.query(tableProduct);

    List<Product> products =
        jsons.map((json) => Product.fromJson(json)).toList();

    if (products.isEmpty) throw NoDataException();
    return products;
  }

  Future<Product> updateProduct(Product product) async {
    var db = await localDb.database;
    var id = await db.update(
      tableProduct,
      product.toJson(),
      where: '$columnId = ?',
      whereArgs: [product.id],
    );

    Product newProduct = product.copyWith(id: id);
    return newProduct;
  }

  Future<Product> getProduct(int id) async {
    var db = await localDb.database;
    var json = await db.query(
      tableProduct,
      where: '$columnId = ?',
      whereArgs: [id],
    );

    return Product.fromJson(json[0]);
  }

  Future<int> deleteProduct(int id) async {
    var db = await localDb.database;
    var deletedId = await db.delete(
      tableProduct,
      where: '$columnId = ?',
      whereArgs: [id],
    );

    return deletedId;
  }
}
