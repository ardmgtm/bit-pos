import 'package:freezed_annotation/freezed_annotation.dart';

import 'cart_item.dart';

part 'cart.freezed.dart';

@freezed
class Cart with _$Cart {
  const Cart._();
  const factory Cart({
    required List<CartItem> items,
  }) = _Cart;

  double get totalPrice {
    double total = 0;
    for (var item in items) {
      total += item.totalPrice;
    }
    return total;
  }
}
