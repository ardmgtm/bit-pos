import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';

import '../../../domain/entity/cart/cart.dart';
import '../../../domain/entity/cart/cart_item.dart';

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
      items = _addItems(items, event.item);
      emit(CartState.cartItemLoaded(Cart(items: items)));
    });

    on<_RemoveItem>((event, emit) {
      var items = [...(state as _CartItemLoaded).cart.items];
      emit(const CartState.modify());
      items.removeAt(event.index);
      emit(CartState.cartItemLoaded(Cart(items: items)));
    });

    on<_ChangeItemCount>((event, emit) {
      var items = [...(state as _CartItemLoaded).cart.items];
      emit(const CartState.modify());
      items[event.index] = items[event.index].copyWith(itemCount: event.value);
      emit(CartState.cartItemLoaded(Cart(items: items)));
    });
  }

  List<CartItem> _addItems(List<CartItem> list, CartItem newItem) {
    int index = list.indexWhere(
      (cartItem) => cartItem.product == newItem.product,
    );
    if (index < 0) {
      list.add(newItem);
    } else {
      var modifiedItem = list[index].copyWith(
        itemCount: list[index].itemCount + newItem.itemCount,
      );
      list[index] = modifiedItem;
    }
    return list;
  }
}
