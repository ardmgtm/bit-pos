import 'package:freezed_annotation/freezed_annotation.dart';

part 'transaction_item.freezed.dart';
part 'transaction_item.g.dart';

const String tableTransactionItem = 'transaction_item';
const String columnId = 'id';
const String columnProductId = 'product_id';
const String columnProductName = 'product_name';
const String columnPrice = 'price';
const String columnItemCount = 'item_count';
const String columnTotalPrice = 'total_price';

@freezed
class TransactionItem with _$TransactionItem {
  const TransactionItem._();

  const factory TransactionItem({
    @JsonKey(defaultValue: 0, name: columnId) int? id,
    @JsonKey(name: columnProductId) required int productId,
    @JsonKey(name: columnProductName) required String productName,
    @JsonKey(name: columnPrice) required double price,
    @JsonKey(name: columnItemCount) required int itemCount,
    @JsonKey(name: columnTotalPrice) required double totalPrice,
  }) = _TransactionItem;

  factory TransactionItem.fromJson(Map<String, dynamic> json) =>
      _$TransactionItemFromJson(json);
}
