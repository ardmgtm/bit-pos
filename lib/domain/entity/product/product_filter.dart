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
      bool conditionB = categoryFilter == null ||
              categoryFilter == '' ||
              categoryFilter?.toLowerCase() == 'all'
          ? true
          : product.category.toLowerCase() == categoryFilter?.toLowerCase();
      return conditionA && conditionB;
    }).toList();
  }

  Map<String, int> get categoryMap {
    var map = {'all': products.length};
    map.addAll(
      groupBy(
        products,
        (Product p) => p.category,
      ).map(
        (key, value) => MapEntry(key.toLowerCase(), value.length),
      ),
    );
    return map;
  }
}
