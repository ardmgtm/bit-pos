part of 'product_filter_bloc.dart';

@freezed
class ProductFilterState with _$ProductFilterState {
  const factory ProductFilterState.initial() = _Initial;
  const factory ProductFilterState.filtering() = _Filtering;
  const factory ProductFilterState.filtered(ProductFilter productFilter) =
      _Filtered;
}
