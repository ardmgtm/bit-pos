part of 'product_bloc.dart';

@freezed
class ProductEvent with _$ProductEvent {
  const factory ProductEvent.started() = _Started;
  const factory ProductEvent.createProduct(Product product) = _CreateProduct;
  const factory ProductEvent.getProducts() = _GetProducts;
  const factory ProductEvent.updateProduct(Product product) = _UpdateProduct;
  const factory ProductEvent.getProduct(int id) = _GetProduct;
  const factory ProductEvent.deleteProduct(int id) = _DeleteProduct;
}
