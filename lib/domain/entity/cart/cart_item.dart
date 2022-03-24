import 'package:freezed_annotation/freezed_annotation.dart';

import '../product/product.dart';

part 'cart_item.freezed.dart';

@freezed
class CartItem with _$CartItem {
  const CartItem._();

  const factory CartItem({
    required Product product,
    required int itemCount,
  }) = _CartItem;

  double get totalPrice => product.price * itemCount;
}
