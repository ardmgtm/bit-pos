import 'package:freezed_annotation/freezed_annotation.dart';

part 'product_failure.freezed.dart';

@freezed
class ProductFailure with _$ProductFailure {
  const factory ProductFailure({String? message}) = _ProductFailure;
  const factory ProductFailure.localDbFailure() = _LocalDbFailure;
  const factory ProductFailure.unexpected() = _Unexpected;
}
