import 'package:collection/collection.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import 'product.dart';

part 'product_filter.freezed.dart';

@freezed
class ProductFilter with _$ProductFilter {
  const ProductFilter._();

  const factory ProductFilter({
    required List<Product> products,
    String? searchFilter,
    String? categoryFilter,
  }) = _ProductFilter;

  List<bool> get filter {
    return products.map<bool>((product) {
      bool conditionA = product.name
          .toLowerCase()
          .contains(searchFilter?.toLowerCase() ?? '');
      bool conditionB = categoryFilter == null || categoryFilter == ''
          ? true
          : product.category == categoryFilter;
      return conditionA && conditionB;
    }).toList();
  }
}
