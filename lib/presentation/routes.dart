import 'package:flutter/cupertino.dart';

import '../domain/product/product.dart';
import 'page/add_product_page.dart';
import 'page/home_page.dart';
import 'page/point_of_sale_page.dart';
import 'page/product_detail_page.dart';
import 'page/products_management_page.dart';

class BitPosRoutes {
  static const home = '/';
  static const productManagement = '/product-management';
  static const addProduct = '/add-product';
  static const productDetail = '/product-detail';
  static const pointOfSale = '/point-of-sale';

  static Widget makeRoute({
    required BuildContext context,
    required String routeName,
    Object? arguments,
  }) {
    Widget child = _buildRoute(
      context: context,
      routeName: routeName,
      arguments: arguments,
    );
    return child;
  }

  static Widget _buildRoute({
    required BuildContext context,
    required String routeName,
    Object? arguments,
  }) {
    switch (routeName) {
      case home:
        return const HomePage();
      case productManagement:
        return const ProductsManagementPage();
      case addProduct:
        Product? product = arguments == null ? null : (arguments as Product);
        return AddProductPage(product: product);
      case productDetail:
        int productId = arguments as int;
        return ProductDetail(productId: productId);
      case pointOfSale:
        return const PointOfSalePage();
      default:
        throw 'Route $routeName is not defined';
    }
  }
}
