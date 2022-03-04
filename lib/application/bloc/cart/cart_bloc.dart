import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';

import '../../../domain/cart/cart.dart';
import '../../../domain/cart/cart_item.dart';

part 'cart_bloc.freezed.dart';
part 'cart_event.dart';
part 'cart_state.dart';

@injectable
class CartBloc extends Bloc<CartEvent, CartState> {
  CartBloc() : super(const _Initial()) {
    on<_Started>((event, emit) {
      emit(const CartState.cartItemLoaded(Cart(items: [])));
    });

    on<_AddItem>((event, emit) {
      var items = [...(state as _CartItemLoaded).cart.items];
      emit(const CartState.modify());
      items.add(event.item);
      emit(CartState.cartItemLoaded(Cart(items: items)));
    });

    on<_RemoveItem>((event, emit) {
      var items = [...(state as _CartItemLoaded).cart.items];
      emit(const CartState.modify());
      items.removeAt(event.index);
      emit(CartState.cartItemLoaded(Cart(items: items)));
    });
  }
}
