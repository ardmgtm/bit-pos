// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'transaction.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

Transaction _$TransactionFromJson(Map<String, dynamic> json) {
  return _Transaction.fromJson(json);
}

/// @nodoc
class _$TransactionTearOff {
  const _$TransactionTearOff();

  _Transaction call(
      {@JsonKey(name: columnId) required String id,
      @JsonKey(name: columnTimestamp) required DateTime timestamp,
      required List<TransactionItem> items,
      @JsonKey(name: columnBill) required double bill,
      @JsonKey(name: columnPayment) required double payment,
      @JsonKey(name: columnChange) required double change}) {
    return _Transaction(
      id: id,
      timestamp: timestamp,
      items: items,
      bill: bill,
      payment: payment,
      change: change,
    );
  }

  Transaction fromJson(Map<String, Object?> json) {
    return Transaction.fromJson(json);
  }
}

/// @nodoc
const $Transaction = _$TransactionTearOff();

/// @nodoc
mixin _$Transaction {
  @JsonKey(name: columnId)
  String get id => throw _privateConstructorUsedError;
  @JsonKey(name: columnTimestamp)
  DateTime get timestamp => throw _privateConstructorUsedError;
  List<TransactionItem> get items => throw _privateConstructorUsedError;
  @JsonKey(name: columnBill)
  double get bill => throw _privateConstructorUsedError;
  @JsonKey(name: columnPayment)
  double get payment => throw _privateConstructorUsedError;
  @JsonKey(name: columnChange)
  double get change => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $TransactionCopyWith<Transaction> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TransactionCopyWith<$Res> {
  factory $TransactionCopyWith(
          Transaction value, $Res Function(Transaction) then) =
      _$TransactionCopyWithImpl<$Res>;
  $Res call(
      {@JsonKey(name: columnId) String id,
      @JsonKey(name: columnTimestamp) DateTime timestamp,
      List<TransactionItem> items,
      @JsonKey(name: columnBill) double bill,
      @JsonKey(name: columnPayment) double payment,
      @JsonKey(name: columnChange) double change});
}

/// @nodoc
class _$TransactionCopyWithImpl<$Res> implements $TransactionCopyWith<$Res> {
  _$TransactionCopyWithImpl(this._value, this._then);

  final Transaction _value;
  // ignore: unused_field
  final $Res Function(Transaction) _then;

  @override
  $Res call({
    Object? id = freezed,
    Object? timestamp = freezed,
    Object? items = freezed,
    Object? bill = freezed,
    Object? payment = freezed,
    Object? change = freezed,
  }) {
    return _then(_value.copyWith(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      timestamp: timestamp == freezed
          ? _value.timestamp
          : timestamp // ignore: cast_nullable_to_non_nullable
              as DateTime,
      items: items == freezed
          ? _value.items
          : items // ignore: cast_nullable_to_non_nullable
              as List<TransactionItem>,
      bill: bill == freezed
          ? _value.bill
          : bill // ignore: cast_nullable_to_non_nullable
              as double,
      payment: payment == freezed
          ? _value.payment
          : payment // ignore: cast_nullable_to_non_nullable
              as double,
      change: change == freezed
          ? _value.change
          : change // ignore: cast_nullable_to_non_nullable
              as double,
    ));
  }
}

/// @nodoc
abstract class _$TransactionCopyWith<$Res>
    implements $TransactionCopyWith<$Res> {
  factory _$TransactionCopyWith(
          _Transaction value, $Res Function(_Transaction) then) =
      __$TransactionCopyWithImpl<$Res>;
  @override
  $Res call(
      {@JsonKey(name: columnId) String id,
      @JsonKey(name: columnTimestamp) DateTime timestamp,
      List<TransactionItem> items,
      @JsonKey(name: columnBill) double bill,
      @JsonKey(name: columnPayment) double payment,
      @JsonKey(name: columnChange) double change});
}

/// @nodoc
class __$TransactionCopyWithImpl<$Res> extends _$TransactionCopyWithImpl<$Res>
    implements _$TransactionCopyWith<$Res> {
  __$TransactionCopyWithImpl(
      _Transaction _value, $Res Function(_Transaction) _then)
      : super(_value, (v) => _then(v as _Transaction));

  @override
  _Transaction get _value => super._value as _Transaction;

  @override
  $Res call({
    Object? id = freezed,
    Object? timestamp = freezed,
    Object? items = freezed,
    Object? bill = freezed,
    Object? payment = freezed,
    Object? change = freezed,
  }) {
    return _then(_Transaction(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      timestamp: timestamp == freezed
          ? _value.timestamp
          : timestamp // ignore: cast_nullable_to_non_nullable
              as DateTime,
      items: items == freezed
          ? _value.items
          : items // ignore: cast_nullable_to_non_nullable
              as List<TransactionItem>,
      bill: bill == freezed
          ? _value.bill
          : bill // ignore: cast_nullable_to_non_nullable
              as double,
      payment: payment == freezed
          ? _value.payment
          : payment // ignore: cast_nullable_to_non_nullable
              as double,
      change: change == freezed
          ? _value.change
          : change // ignore: cast_nullable_to_non_nullable
              as double,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_Transaction extends _Transaction {
  const _$_Transaction(
      {@JsonKey(name: columnId) required this.id,
      @JsonKey(name: columnTimestamp) required this.timestamp,
      required this.items,
      @JsonKey(name: columnBill) required this.bill,
      @JsonKey(name: columnPayment) required this.payment,
      @JsonKey(name: columnChange) required this.change})
      : super._();

  factory _$_Transaction.fromJson(Map<String, dynamic> json) =>
      _$$_TransactionFromJson(json);

  @override
  @JsonKey(name: columnId)
  final String id;
  @override
  @JsonKey(name: columnTimestamp)
  final DateTime timestamp;
  @override
  final List<TransactionItem> items;
  @override
  @JsonKey(name: columnBill)
  final double bill;
  @override
  @JsonKey(name: columnPayment)
  final double payment;
  @override
  @JsonKey(name: columnChange)
  final double change;

  @override
  String toString() {
    return 'Transaction(id: $id, timestamp: $timestamp, items: $items, bill: $bill, payment: $payment, change: $change)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _Transaction &&
            const DeepCollectionEquality().equals(other.id, id) &&
            const DeepCollectionEquality().equals(other.timestamp, timestamp) &&
            const DeepCollectionEquality().equals(other.items, items) &&
            const DeepCollectionEquality().equals(other.bill, bill) &&
            const DeepCollectionEquality().equals(other.payment, payment) &&
            const DeepCollectionEquality().equals(other.change, change));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(id),
      const DeepCollectionEquality().hash(timestamp),
      const DeepCollectionEquality().hash(items),
      const DeepCollectionEquality().hash(bill),
      const DeepCollectionEquality().hash(payment),
      const DeepCollectionEquality().hash(change));

  @JsonKey(ignore: true)
  @override
  _$TransactionCopyWith<_Transaction> get copyWith =>
      __$TransactionCopyWithImpl<_Transaction>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_TransactionToJson(this);
  }
}

abstract class _Transaction extends Transaction {
  const factory _Transaction(
      {@JsonKey(name: columnId) required String id,
      @JsonKey(name: columnTimestamp) required DateTime timestamp,
      required List<TransactionItem> items,
      @JsonKey(name: columnBill) required double bill,
      @JsonKey(name: columnPayment) required double payment,
      @JsonKey(name: columnChange) required double change}) = _$_Transaction;
  const _Transaction._() : super._();

  factory _Transaction.fromJson(Map<String, dynamic> json) =
      _$_Transaction.fromJson;

  @override
  @JsonKey(name: columnId)
  String get id;
  @override
  @JsonKey(name: columnTimestamp)
  DateTime get timestamp;
  @override
  List<TransactionItem> get items;
  @override
  @JsonKey(name: columnBill)
  double get bill;
  @override
  @JsonKey(name: columnPayment)
  double get payment;
  @override
  @JsonKey(name: columnChange)
  double get change;
  @override
  @JsonKey(ignore: true)
  _$TransactionCopyWith<_Transaction> get copyWith =>
      throw _privateConstructorUsedError;
}
