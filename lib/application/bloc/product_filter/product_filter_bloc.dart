import 'package:bit_pos/domain/product/product_filter.dart';
import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';

import '../../../domain/product/product.dart';

part 'product_filter_event.dart';
part 'product_filter_state.dart';
part 'product_filter_bloc.freezed.dart';

@injectable
class ProductFilterBloc extends Bloc<ProductFilterEvent, ProductFilterState> {
  ProductFilterBloc() : super(const _Initial()) {
    on<_Started>((event, emit) {
      emit(const ProductFilterState.filtered(ProductFilter(products: [])));
    });

    on<_Filter>((event, emit) {
      var lastFilter = state is _Filtered
          ? (state as _Filtered).productFilter
          : const ProductFilter(products: []);
      emit(const ProductFilterState.filtering());
      emit(ProductFilterState.filtered(lastFilter.copyWith(
        products: event.products ?? lastFilter.products,
        searchFilter: event.search ?? lastFilter.searchFilter,
        categoryFilter: event.category ?? lastFilter.categoryFilter,
      )));
    });
  }
}
