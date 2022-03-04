import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import '../../../domain/cart/cart_item.dart';

part 'cart_bloc.freezed.dart';
part 'cart_event.dart';
part 'cart_state.dart';

class CartBloc extends Bloc<CartEvent, CartState> {
  CartBloc() : super(const _Initial()) {
    on<_Started>((event, emit) {
      emit(const CartState.cartItemLoaded([]));
    });

    on<_AddItem>((event, emit) {
      var items = (state as _CartItemLoaded).cartItems;
      emit(const CartState.modify());
      items.add(event.item);
      emit(CartState.cartItemLoaded(items));
    });

    on<_RemoveItem>((event, emit) {
      var items = (state as _CartItemLoaded).cartItems;
      emit(const CartState.modify());
      items.removeAt(event.index);
      emit(CartState.cartItemLoaded(items));
    });
  }
}
