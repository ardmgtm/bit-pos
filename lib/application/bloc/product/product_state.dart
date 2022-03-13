part of 'product_bloc.dart';

@freezed
class ProductState with _$ProductState {
  const factory ProductState.initial() = _Initial;
  const factory ProductState.loading() = _Loading;
  const factory ProductState.error(ProductFailure failure) = _Error;
  const factory ProductState.productLoaded(Product product) = _ProductLoaded;
  const factory ProductState.productsLoaded(List<Product> products) =
      _ProductsLoaded;
}
