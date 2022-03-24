// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'transaction_item.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_TransactionItem _$$_TransactionItemFromJson(Map<String, dynamic> json) =>
    _$_TransactionItem(
      id: json['id'] as int? ?? 0,
      productId: json['product_id'] as int,
      productName: json['product_name'] as String,
      price: (json['price'] as num).toDouble(),
      itemCount: json['item_count'] as int,
      totalPrice: (json['total_price'] as num).toDouble(),
    );

Map<String, dynamic> _$$_TransactionItemToJson(_$_TransactionItem instance) =>
    <String, dynamic>{
      'id': instance.id,
      'product_id': instance.productId,
      'product_name': instance.productName,
      'price': instance.price,
      'item_count': instance.itemCount,
      'total_price': instance.totalPrice,
    };
