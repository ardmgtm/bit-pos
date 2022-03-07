part of 'cart_bloc.dart';

@freezed
class CartEvent with _$CartEvent {
  const factory CartEvent.started() = _Started;
  const factory CartEvent.addItem(CartItem item) = _AddItem;
  const factory CartEvent.removeItem(int index) = _RemoveItem;
  const factory CartEvent.changeItemCount(int index, int value) =
      _ChangeItemCount;
}
