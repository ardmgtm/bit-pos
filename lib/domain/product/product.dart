import 'package:freezed_annotation/freezed_annotation.dart';

part 'product.freezed.dart';
part 'product.g.dart';

const String tableProduct = 'product';
const String columnId = 'id';
const String columnName = 'name';
const String columnPrice = 'price';
const String columnCategory = 'category';
const String columnImage = 'image';
const String columnBarcode = 'barcode';

@freezed
class Product with _$Product {
  const factory Product({
    @JsonKey(name: columnId, defaultValue: 0) int? id,
    @JsonKey(name: columnName) required String name,
    @JsonKey(name: columnPrice) required double price,
    @JsonKey(name: columnCategory) required String category,
    @JsonKey(name: columnImage) required String image,
    @JsonKey(name: columnBarcode) String? barcode,
  }) = _Product;

  factory Product.fromJson(Map<String, dynamic> json) =>
      _$ProductFromJson(json);
}
