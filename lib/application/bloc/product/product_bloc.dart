import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';

import '../../../domain/product/product.dart';
import '../../../domain/product/product_failure.dart';
import '../../../domain/product/product_repository.dart';

part 'product_bloc.freezed.dart';
part 'product_event.dart';
part 'product_state.dart';

@injectable
class ProductBloc extends Bloc<ProductEvent, ProductState> {
  final ProductRepository repository;

  ProductBloc(this.repository) : super(const _Initial()) {
    on<_CreateProduct>((event, emit) async {
      emit(const ProductState.loading());
      var res = await repository.createProduct(event.product);
      emit(res.fold(
        (product) => ProductState.productLoaded(product),
        (failure) => ProductState.error(failure),
      ));
    });

    on<_GetProducts>((event, emit) async {
      emit(const ProductState.loading());
      var res = await repository.getProducts();
      emit(res.fold(
        (products) => ProductState.productsLoaded(products),
        (failure) => ProductState.error(failure),
      ));
    });

    on<_UpdateProduct>((event, emit) async {
      emit(const ProductState.loading());
      var res = await repository.updateProduct(event.product);
      emit(res.fold(
        (product) => ProductState.productLoaded(product),
        (failure) => ProductState.error(failure),
      ));
    });

    on<_GetProduct>((event, emit) async {
      emit(const ProductState.loading());
      var res = await repository.getProduct(event.id);
      emit(res.fold(
        (product) => ProductState.productLoaded(product),
        (failure) => ProductState.error(failure),
      ));
    });

    on<_DeleteProduct>((event, emit) async {
      emit(const ProductState.loading());
      var res = await repository.deleteProduct(event.id);
      emit(res.fold(
        (id) => const ProductState.initial(),
        (failure) => ProductState.error(failure),
      ));
    });
  }
}
