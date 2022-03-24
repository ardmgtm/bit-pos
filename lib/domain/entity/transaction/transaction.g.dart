// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'transaction.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_Transaction _$$_TransactionFromJson(Map<String, dynamic> json) =>
    _$_Transaction(
      id: json['id'] as String,
      timestamp: DateTime.parse(json['timestamp'] as String),
      items: (json['items'] as List<dynamic>)
          .map((e) => TransactionItem.fromJson(e as Map<String, dynamic>))
          .toList(),
      bill: (json['bill'] as num).toDouble(),
      payment: (json['payment'] as num).toDouble(),
      change: (json['change'] as num).toDouble(),
    );

Map<String, dynamic> _$$_TransactionToJson(_$_Transaction instance) =>
    <String, dynamic>{
      'id': instance.id,
      'timestamp': instance.timestamp.toIso8601String(),
      'items': instance.items,
      'bill': instance.bill,
      'payment': instance.payment,
      'change': instance.change,
    };
