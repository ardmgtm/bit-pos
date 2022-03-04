// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'cart_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$CartEventTearOff {
  const _$CartEventTearOff();

  _Started started() {
    return const _Started();
  }

  _AddItem addItem(CartItem item) {
    return _AddItem(
      item,
    );
  }

  _RemoveItem removeItem(int index) {
    return _RemoveItem(
      index,
    );
  }
}

/// @nodoc
const $CartEvent = _$CartEventTearOff();

/// @nodoc
mixin _$CartEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function(CartItem item) addItem,
    required TResult Function(int index) removeItem,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? started,
    TResult Function(CartItem item)? addItem,
    TResult Function(int index)? removeItem,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function(CartItem item)? addItem,
    TResult Function(int index)? removeItem,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
    required TResult Function(_AddItem value) addItem,
    required TResult Function(_RemoveItem value) removeItem,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_AddItem value)? addItem,
    TResult Function(_RemoveItem value)? removeItem,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_AddItem value)? addItem,
    TResult Function(_RemoveItem value)? removeItem,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CartEventCopyWith<$Res> {
  factory $CartEventCopyWith(CartEvent value, $Res Function(CartEvent) then) =
      _$CartEventCopyWithImpl<$Res>;
}

/// @nodoc
class _$CartEventCopyWithImpl<$Res> implements $CartEventCopyWith<$Res> {
  _$CartEventCopyWithImpl(this._value, this._then);

  final CartEvent _value;
  // ignore: unused_field
  final $Res Function(CartEvent) _then;
}

/// @nodoc
abstract class _$StartedCopyWith<$Res> {
  factory _$StartedCopyWith(_Started value, $Res Function(_Started) then) =
      __$StartedCopyWithImpl<$Res>;
}

/// @nodoc
class __$StartedCopyWithImpl<$Res> extends _$CartEventCopyWithImpl<$Res>
    implements _$StartedCopyWith<$Res> {
  __$StartedCopyWithImpl(_Started _value, $Res Function(_Started) _then)
      : super(_value, (v) => _then(v as _Started));

  @override
  _Started get _value => super._value as _Started;
}

/// @nodoc

class _$_Started implements _Started {
  const _$_Started();

  @override
  String toString() {
    return 'CartEvent.started()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _Started);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function(CartItem item) addItem,
    required TResult Function(int index) removeItem,
  }) {
    return started();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? started,
    TResult Function(CartItem item)? addItem,
    TResult Function(int index)? removeItem,
  }) {
    return started?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function(CartItem item)? addItem,
    TResult Function(int index)? removeItem,
    required TResult orElse(),
  }) {
    if (started != null) {
      return started();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
    required TResult Function(_AddItem value) addItem,
    required TResult Function(_RemoveItem value) removeItem,
  }) {
    return started(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_AddItem value)? addItem,
    TResult Function(_RemoveItem value)? removeItem,
  }) {
    return started?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_AddItem value)? addItem,
    TResult Function(_RemoveItem value)? removeItem,
    required TResult orElse(),
  }) {
    if (started != null) {
      return started(this);
    }
    return orElse();
  }
}

abstract class _Started implements CartEvent {
  const factory _Started() = _$_Started;
}

/// @nodoc
abstract class _$AddItemCopyWith<$Res> {
  factory _$AddItemCopyWith(_AddItem value, $Res Function(_AddItem) then) =
      __$AddItemCopyWithImpl<$Res>;
  $Res call({CartItem item});

  $CartItemCopyWith<$Res> get item;
}

/// @nodoc
class __$AddItemCopyWithImpl<$Res> extends _$CartEventCopyWithImpl<$Res>
    implements _$AddItemCopyWith<$Res> {
  __$AddItemCopyWithImpl(_AddItem _value, $Res Function(_AddItem) _then)
      : super(_value, (v) => _then(v as _AddItem));

  @override
  _AddItem get _value => super._value as _AddItem;

  @override
  $Res call({
    Object? item = freezed,
  }) {
    return _then(_AddItem(
      item == freezed
          ? _value.item
          : item // ignore: cast_nullable_to_non_nullable
              as CartItem,
    ));
  }

  @override
  $CartItemCopyWith<$Res> get item {
    return $CartItemCopyWith<$Res>(_value.item, (value) {
      return _then(_value.copyWith(item: value));
    });
  }
}

/// @nodoc

class _$_AddItem implements _AddItem {
  const _$_AddItem(this.item);

  @override
  final CartItem item;

  @override
  String toString() {
    return 'CartEvent.addItem(item: $item)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _AddItem &&
            const DeepCollectionEquality().equals(other.item, item));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(item));

  @JsonKey(ignore: true)
  @override
  _$AddItemCopyWith<_AddItem> get copyWith =>
      __$AddItemCopyWithImpl<_AddItem>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function(CartItem item) addItem,
    required TResult Function(int index) removeItem,
  }) {
    return addItem(item);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? started,
    TResult Function(CartItem item)? addItem,
    TResult Function(int index)? removeItem,
  }) {
    return addItem?.call(item);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function(CartItem item)? addItem,
    TResult Function(int index)? removeItem,
    required TResult orElse(),
  }) {
    if (addItem != null) {
      return addItem(item);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
    required TResult Function(_AddItem value) addItem,
    required TResult Function(_RemoveItem value) removeItem,
  }) {
    return addItem(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_AddItem value)? addItem,
    TResult Function(_RemoveItem value)? removeItem,
  }) {
    return addItem?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_AddItem value)? addItem,
    TResult Function(_RemoveItem value)? removeItem,
    required TResult orElse(),
  }) {
    if (addItem != null) {
      return addItem(this);
    }
    return orElse();
  }
}

abstract class _AddItem implements CartEvent {
  const factory _AddItem(CartItem item) = _$_AddItem;

  CartItem get item;
  @JsonKey(ignore: true)
  _$AddItemCopyWith<_AddItem> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$RemoveItemCopyWith<$Res> {
  factory _$RemoveItemCopyWith(
          _RemoveItem value, $Res Function(_RemoveItem) then) =
      __$RemoveItemCopyWithImpl<$Res>;
  $Res call({int index});
}

/// @nodoc
class __$RemoveItemCopyWithImpl<$Res> extends _$CartEventCopyWithImpl<$Res>
    implements _$RemoveItemCopyWith<$Res> {
  __$RemoveItemCopyWithImpl(
      _RemoveItem _value, $Res Function(_RemoveItem) _then)
      : super(_value, (v) => _then(v as _RemoveItem));

  @override
  _RemoveItem get _value => super._value as _RemoveItem;

  @override
  $Res call({
    Object? index = freezed,
  }) {
    return _then(_RemoveItem(
      index == freezed
          ? _value.index
          : index // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc

class _$_RemoveItem implements _RemoveItem {
  const _$_RemoveItem(this.index);

  @override
  final int index;

  @override
  String toString() {
    return 'CartEvent.removeItem(index: $index)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _RemoveItem &&
            const DeepCollectionEquality().equals(other.index, index));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(index));

  @JsonKey(ignore: true)
  @override
  _$RemoveItemCopyWith<_RemoveItem> get copyWith =>
      __$RemoveItemCopyWithImpl<_RemoveItem>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function(CartItem item) addItem,
    required TResult Function(int index) removeItem,
  }) {
    return removeItem(index);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? started,
    TResult Function(CartItem item)? addItem,
    TResult Function(int index)? removeItem,
  }) {
    return removeItem?.call(index);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function(CartItem item)? addItem,
    TResult Function(int index)? removeItem,
    required TResult orElse(),
  }) {
    if (removeItem != null) {
      return removeItem(index);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
    required TResult Function(_AddItem value) addItem,
    required TResult Function(_RemoveItem value) removeItem,
  }) {
    return removeItem(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_AddItem value)? addItem,
    TResult Function(_RemoveItem value)? removeItem,
  }) {
    return removeItem?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_AddItem value)? addItem,
    TResult Function(_RemoveItem value)? removeItem,
    required TResult orElse(),
  }) {
    if (removeItem != null) {
      return removeItem(this);
    }
    return orElse();
  }
}

abstract class _RemoveItem implements CartEvent {
  const factory _RemoveItem(int index) = _$_RemoveItem;

  int get index;
  @JsonKey(ignore: true)
  _$RemoveItemCopyWith<_RemoveItem> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
class _$CartStateTearOff {
  const _$CartStateTearOff();

  _Initial initial() {
    return const _Initial();
  }

  _Modify modify() {
    return const _Modify();
  }

  _CartItemLoaded cartItemLoaded(Cart cart) {
    return _CartItemLoaded(
      cart,
    );
  }
}

/// @nodoc
const $CartState = _$CartStateTearOff();

/// @nodoc
mixin _$CartState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() modify,
    required TResult Function(Cart cart) cartItemLoaded,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? modify,
    TResult Function(Cart cart)? cartItemLoaded,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? modify,
    TResult Function(Cart cart)? cartItemLoaded,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_Modify value) modify,
    required TResult Function(_CartItemLoaded value) cartItemLoaded,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Modify value)? modify,
    TResult Function(_CartItemLoaded value)? cartItemLoaded,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Modify value)? modify,
    TResult Function(_CartItemLoaded value)? cartItemLoaded,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CartStateCopyWith<$Res> {
  factory $CartStateCopyWith(CartState value, $Res Function(CartState) then) =
      _$CartStateCopyWithImpl<$Res>;
}

/// @nodoc
class _$CartStateCopyWithImpl<$Res> implements $CartStateCopyWith<$Res> {
  _$CartStateCopyWithImpl(this._value, this._then);

  final CartState _value;
  // ignore: unused_field
  final $Res Function(CartState) _then;
}

/// @nodoc
abstract class _$InitialCopyWith<$Res> {
  factory _$InitialCopyWith(_Initial value, $Res Function(_Initial) then) =
      __$InitialCopyWithImpl<$Res>;
}

/// @nodoc
class __$InitialCopyWithImpl<$Res> extends _$CartStateCopyWithImpl<$Res>
    implements _$InitialCopyWith<$Res> {
  __$InitialCopyWithImpl(_Initial _value, $Res Function(_Initial) _then)
      : super(_value, (v) => _then(v as _Initial));

  @override
  _Initial get _value => super._value as _Initial;
}

/// @nodoc

class _$_Initial implements _Initial {
  const _$_Initial();

  @override
  String toString() {
    return 'CartState.initial()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _Initial);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() modify,
    required TResult Function(Cart cart) cartItemLoaded,
  }) {
    return initial();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? modify,
    TResult Function(Cart cart)? cartItemLoaded,
  }) {
    return initial?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? modify,
    TResult Function(Cart cart)? cartItemLoaded,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_Modify value) modify,
    required TResult Function(_CartItemLoaded value) cartItemLoaded,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Modify value)? modify,
    TResult Function(_CartItemLoaded value)? cartItemLoaded,
  }) {
    return initial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Modify value)? modify,
    TResult Function(_CartItemLoaded value)? cartItemLoaded,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class _Initial implements CartState {
  const factory _Initial() = _$_Initial;
}

/// @nodoc
abstract class _$ModifyCopyWith<$Res> {
  factory _$ModifyCopyWith(_Modify value, $Res Function(_Modify) then) =
      __$ModifyCopyWithImpl<$Res>;
}

/// @nodoc
class __$ModifyCopyWithImpl<$Res> extends _$CartStateCopyWithImpl<$Res>
    implements _$ModifyCopyWith<$Res> {
  __$ModifyCopyWithImpl(_Modify _value, $Res Function(_Modify) _then)
      : super(_value, (v) => _then(v as _Modify));

  @override
  _Modify get _value => super._value as _Modify;
}

/// @nodoc

class _$_Modify implements _Modify {
  const _$_Modify();

  @override
  String toString() {
    return 'CartState.modify()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _Modify);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() modify,
    required TResult Function(Cart cart) cartItemLoaded,
  }) {
    return modify();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? modify,
    TResult Function(Cart cart)? cartItemLoaded,
  }) {
    return modify?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? modify,
    TResult Function(Cart cart)? cartItemLoaded,
    required TResult orElse(),
  }) {
    if (modify != null) {
      return modify();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_Modify value) modify,
    required TResult Function(_CartItemLoaded value) cartItemLoaded,
  }) {
    return modify(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Modify value)? modify,
    TResult Function(_CartItemLoaded value)? cartItemLoaded,
  }) {
    return modify?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Modify value)? modify,
    TResult Function(_CartItemLoaded value)? cartItemLoaded,
    required TResult orElse(),
  }) {
    if (modify != null) {
      return modify(this);
    }
    return orElse();
  }
}

abstract class _Modify implements CartState {
  const factory _Modify() = _$_Modify;
}

/// @nodoc
abstract class _$CartItemLoadedCopyWith<$Res> {
  factory _$CartItemLoadedCopyWith(
          _CartItemLoaded value, $Res Function(_CartItemLoaded) then) =
      __$CartItemLoadedCopyWithImpl<$Res>;
  $Res call({Cart cart});

  $CartCopyWith<$Res> get cart;
}

/// @nodoc
class __$CartItemLoadedCopyWithImpl<$Res> extends _$CartStateCopyWithImpl<$Res>
    implements _$CartItemLoadedCopyWith<$Res> {
  __$CartItemLoadedCopyWithImpl(
      _CartItemLoaded _value, $Res Function(_CartItemLoaded) _then)
      : super(_value, (v) => _then(v as _CartItemLoaded));

  @override
  _CartItemLoaded get _value => super._value as _CartItemLoaded;

  @override
  $Res call({
    Object? cart = freezed,
  }) {
    return _then(_CartItemLoaded(
      cart == freezed
          ? _value.cart
          : cart // ignore: cast_nullable_to_non_nullable
              as Cart,
    ));
  }

  @override
  $CartCopyWith<$Res> get cart {
    return $CartCopyWith<$Res>(_value.cart, (value) {
      return _then(_value.copyWith(cart: value));
    });
  }
}

/// @nodoc

class _$_CartItemLoaded implements _CartItemLoaded {
  const _$_CartItemLoaded(this.cart);

  @override
  final Cart cart;

  @override
  String toString() {
    return 'CartState.cartItemLoaded(cart: $cart)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _CartItemLoaded &&
            const DeepCollectionEquality().equals(other.cart, cart));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(cart));

  @JsonKey(ignore: true)
  @override
  _$CartItemLoadedCopyWith<_CartItemLoaded> get copyWith =>
      __$CartItemLoadedCopyWithImpl<_CartItemLoaded>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() modify,
    required TResult Function(Cart cart) cartItemLoaded,
  }) {
    return cartItemLoaded(cart);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? modify,
    TResult Function(Cart cart)? cartItemLoaded,
  }) {
    return cartItemLoaded?.call(cart);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? modify,
    TResult Function(Cart cart)? cartItemLoaded,
    required TResult orElse(),
  }) {
    if (cartItemLoaded != null) {
      return cartItemLoaded(cart);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_Modify value) modify,
    required TResult Function(_CartItemLoaded value) cartItemLoaded,
  }) {
    return cartItemLoaded(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Modify value)? modify,
    TResult Function(_CartItemLoaded value)? cartItemLoaded,
  }) {
    return cartItemLoaded?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Modify value)? modify,
    TResult Function(_CartItemLoaded value)? cartItemLoaded,
    required TResult orElse(),
  }) {
    if (cartItemLoaded != null) {
      return cartItemLoaded(this);
    }
    return orElse();
  }
}

abstract class _CartItemLoaded implements CartState {
  const factory _CartItemLoaded(Cart cart) = _$_CartItemLoaded;

  Cart get cart;
  @JsonKey(ignore: true)
  _$CartItemLoadedCopyWith<_CartItemLoaded> get copyWith =>
      throw _privateConstructorUsedError;
}
