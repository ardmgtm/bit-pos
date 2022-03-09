part of 'product_filter_bloc.dart';

@freezed
class ProductFilterEvent with _$ProductFilterEvent {
  const factory ProductFilterEvent.started() = _Started;
  const factory ProductFilterEvent.filter({
    List<Product>? products,
    String? search,
    String? category,
  }) = _Filter;
}
