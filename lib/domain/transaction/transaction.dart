import 'package:freezed_annotation/freezed_annotation.dart';

import '../transaction_item/transaction_item.dart';

part 'transaction.freezed.dart';
part 'transaction.g.dart';

const String tableTransaction = 'transaction';
const String columnId = 'id';
const String columnTimestamp = 'timestamp';
const String columnBill = 'bill';
const String columnPayment = 'payment';
const String columnChange = 'change';

@freezed
class Transaction with _$Transaction {
  const Transaction._();

  const factory Transaction({
    @JsonKey(name: columnId) required String id,
    @JsonKey(name: columnTimestamp) required DateTime timestamp,
    required List<TransactionItem> items,
    @JsonKey(name: columnBill) required double bill,
    @JsonKey(name: columnPayment) required double payment,
    @JsonKey(name: columnChange) required double change,
  }) = _Transaction;

  factory Transaction.fromJson(Map<String, dynamic> json) =>
      _$TransactionFromJson(json);
}
