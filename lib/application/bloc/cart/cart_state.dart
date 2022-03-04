part of 'cart_bloc.dart';

@freezed
class CartState with _$CartState {
  const factory CartState.initial() = _Initial;
  const factory CartState.modify() = _Modify;
  const factory CartState.cartItemLoaded(List<CartItem> cartItems) =
      _CartItemLoaded;
}
