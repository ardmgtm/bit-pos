// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'transaction_item.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_TransactionItem _$$_TransactionItemFromJson(Map<String, dynamic> json) =>
    _$_TransactionItem(
      id: json['id'] as int? ?? 0,
      productId: json['productId'] as int,
      productName: json['productName'] as String,
      price: (json['price'] as num).toDouble(),
      itemCount: json['itemCount'] as int,
      totalPrice: (json['totalPrice'] as num).toDouble(),
    );

Map<String, dynamic> _$$_TransactionItemToJson(_$_TransactionItem instance) =>
    <String, dynamic>{
      'id': instance.id,
      'productId': instance.productId,
      'productName': instance.productName,
      'price': instance.price,
      'itemCount': instance.itemCount,
      'totalPrice': instance.totalPrice,
    };
