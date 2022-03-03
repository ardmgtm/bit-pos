import 'package:injectable/injectable.dart';

import '../../../domain/product/product.dart';
import '../../core/local_db.dart';

@lazySingleton
class ProductLocalDataSource {
  final LocalDb localDb;

  ProductLocalDataSource(this.localDb);

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
    return products;
  }

  Future<Product> updateProduct(Product product) async {
    var db = await localDb.database;
    var id = await db.update(tableProduct, product.toJson());

    Product newProduct = product.copyWith(id: id);
    return newProduct;
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
