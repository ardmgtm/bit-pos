import 'package:freezed_annotation/freezed_annotation.dart';

part 'product_failure.freezed.dart';

@freezed
class ProductFailure with _$ProductFailure {
  const factory ProductFailure.localDbFailure() = _LocalDbFailure;
  const factory ProductFailure.noDataFailure() = _NoDataFailure;
  const factory ProductFailure.unexpected() = _Unexpected;
}
